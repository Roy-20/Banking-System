package com.example.RiteshFirstProject.Controller;

import com.example.RiteshFirstProject.forms.TransactionForm;
import com.example.RiteshFirstProject.models.CustomerModel;
import com.example.RiteshFirstProject.models.TransactionModel;
import com.example.RiteshFirstProject.repo.CustomerRepository;
import com.example.RiteshFirstProject.repo.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller

public class TestController {

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private TransactionRepository transactionRepository;

    @GetMapping("/")
    public String getHome(){
        return "home";
    }

    @GetMapping("/userDetails")
    public String getDetails(Model model){
        List<CustomerModel> customers = customerRepository.findAll();
        List<TransactionForm> formList= new ArrayList<>();
        for(CustomerModel c:customers) {
            TransactionForm form = new TransactionForm();
            form.setCurrentBalance(c.getCurrentBalance());
            form.setSender(c.getName());
            form.setSenderEmail(c.getEmail());
            form.setSerialNo(c.getSerialNo());
            formList.add(form);
        }
        model.addAttribute("forms",formList);
        model.addAttribute("transactionForm", new TransactionForm());
        return "customers";
    }
    @GetMapping("/txnHistory")
    public String getTxnDetails(Model model){
        List<TransactionModel> txns = transactionRepository.findAll();
        model.addAttribute("transactions",txns);
        return "transactionHistory";
    }

    @PostMapping("/initiateTxn")
    public String submitForm(@RequestParam("email") String email, Model model) {
        final CustomerModel user = customerRepository.findByEmail(email);
        TransactionForm transactionForm = new TransactionForm();
        transactionForm.setSenderEmail(user.getEmail());
        transactionForm.setSerialNo(user.getSerialNo());
        transactionForm.setSender(user.getName());
        transactionForm.setCurrentBalance(user.getCurrentBalance());
        List<CustomerModel> userList = customerRepository.findAll();
        userList.remove(user);
        List<String> userNames = new ArrayList<>();
        for (CustomerModel u:userList) {
            userNames.add(u.getName() + " - " + u.getEmail());
        }
        model.addAttribute("users",userNames);
        model.addAttribute("txnForm",transactionForm);
        return "transaction";
    }

    @PostMapping("/transact")
    public String transactAmount(@ModelAttribute TransactionForm transactionForm, Model model) {
       final CustomerModel sender =  customerRepository.findByEmail(transactionForm.getSenderEmail());
       final CustomerModel receiver = customerRepository.findByEmail(transactionForm.getReceiver().split("-")[1].trim());
       final double amountToSend = transactionForm.getAmount();
       boolean result = false;
       if(amountToSend > 0 && sender.getCurrentBalance() >= amountToSend){
           try {
               TransactionModel transactionModel = new TransactionModel();
               transactionModel.setAmount(amountToSend);
               transactionModel.setSender(sender.getName());
               transactionModel.setReceiver(receiver.getName());
               LocalDate todayLocalDate = LocalDate.now(ZoneId.of("Asia/Calcutta"));
               transactionModel.setDate(Date.valueOf(todayLocalDate));
               transactionRepository.save(transactionModel);
               receiver.setCurrentBalance(receiver.getCurrentBalance() + amountToSend);
               customerRepository.save(receiver);
               sender.setCurrentBalance(sender.getCurrentBalance() - amountToSend);
               customerRepository.save(sender);
               result = true;
           }catch (final Exception e){
               result = false;
           }
       }
       model.addAttribute("txnRes", result);
       return "txnResult";
    }
}
