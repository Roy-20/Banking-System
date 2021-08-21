package com.example.bankingsystem.repo;

import com.example.bankingsystem.models.CustomerModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<CustomerModel,Integer> {
    CustomerModel findByEmail(String email);
}
