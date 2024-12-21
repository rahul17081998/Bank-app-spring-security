package com.eazybytes.controller;

import com.eazybytes.model.AccountTransactions;
import com.eazybytes.model.Accounts;
import com.eazybytes.model.Customer;
import com.eazybytes.repository.AccountTransactionRepository;
import com.eazybytes.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BalanceController {

    @Autowired
    private AccountTransactionRepository accountTransactionRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @GetMapping("/myBalance")
    public List<AccountTransactions> getBalanceDetails(@RequestParam String email){
        List<Customer> customers =customerRepository.findByEmail(email);
        if(customers !=null && !customers.isEmpty()){
            List<AccountTransactions> accountTransactions = accountTransactionRepository.
                    findByCustomerIdOrderByTransactionDtDesc(customers.get(0).getId());
            if(accountTransactions !=null){
                return accountTransactions;
            }
        }
        return null;
    }
}