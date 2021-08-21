package com.example.bankingsystem.repo;

import com.example.bankingsystem.models.TransactionModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<TransactionModel,Integer> {
}
