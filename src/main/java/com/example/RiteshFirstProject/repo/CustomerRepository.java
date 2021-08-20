package com.example.RiteshFirstProject.repo;

import com.example.RiteshFirstProject.models.CustomerModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<CustomerModel,Integer> {
    CustomerModel findByEmail(String email);
}
