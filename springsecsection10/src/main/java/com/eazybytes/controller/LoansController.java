package com.eazybytes.controller;

import com.eazybytes.model.Loans;
import com.eazybytes.repository.LoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class LoansController {

    @Autowired
    private LoanRepository loanRepository;

    @GetMapping("/myLoans")
    @PostAuthorize("hasRole('USER')")
    public ResponseEntity<?> getLoansDetails(@RequestParam int id){

       List<Loans> loans =null;
       try{
           loans=loanRepository.findByCustomerIdOrderByStartDtDesc(id);
           if(!loans.isEmpty()){
               return ResponseEntity.ok(loans);
           }
           else
               return ResponseEntity.notFound().build();
       }catch (Exception ex){
           return  ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error Occurred while fetching loans details: "+ex.getMessage());
       }


    }
}
