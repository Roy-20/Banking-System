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
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller

public class TestController {

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private TransactionRepository transactionRepository;

    @GetMapping("/home")
    public String getHome(){
        return "home";
    }

    @GetMapping("/customerdetails")
    public String getDetails(Model model){
        List<CustomerModel> customers = customerRepository.findAll();
        List<TransactionForm> formList= new ArrayList<>();
        for(CustomerModel c:customers) {
            TransactionForm form = new TransactionForm();
            form.setCurrentBalance(c.getCurrentBalance());
            form.setSender(c.getName());
            form.setEmail(c.getEmail());
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
        return "transactionHistory";
    }

    @GetMapping("/initiateTxn")
    public String submitForm(Model model) {
        List<CustomerModel> customerModels = customerRepository.findAll();
        List<String> userNames = customerModels.stream().map(c -> c.getName()).collect(Collectors.toList());
        model.addAttribute("receivers",userNames);
        model.addAttribute("transactionForm", new TransactionForm());
        return "transaction";
    }

    @PostMapping("/transact")
    public ModelAndView transactAmount(@ModelAttribute("transactionForm") TransactionForm form) {
        return null;
    }
}
