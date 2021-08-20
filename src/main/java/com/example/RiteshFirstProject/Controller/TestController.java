package com.example.RiteshFirstProject.Controller;

import com.example.RiteshFirstProject.models.CustomerModel;
import com.example.RiteshFirstProject.models.TransactionModel;
import com.example.RiteshFirstProject.repo.CustomerRepository;
import com.example.RiteshFirstProject.repo.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

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
    public ModelAndView getDetails(){
        List<CustomerModel> customers = customerRepository.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("table");
        modelAndView.addObject("customers",customers);
        return modelAndView;
    }
    @GetMapping("/txndetails")
    public ModelAndView getTxnDetails(){
        List<TransactionModel> txns = transactionRepository.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transaction");
        modelAndView.addObject("txns",txns);
        return modelAndView;
    }


}
