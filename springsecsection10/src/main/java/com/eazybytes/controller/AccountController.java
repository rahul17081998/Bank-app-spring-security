package com.eazybytes.controller;

import com.eazybytes.model.Accounts;
import com.eazybytes.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AccountController {

    @Autowired
    AccountRepository accountRepository;

    @GetMapping("/myAccount")
    public Accounts getAccountDetails(@RequestParam int id){
        Accounts accounts = accountRepository.findByCustomerId(id);
        if(accounts != null){
            return accounts;
        }else{
            return null;
        }
    }
}
