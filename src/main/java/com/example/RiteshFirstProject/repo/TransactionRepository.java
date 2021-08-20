package com.example.RiteshFirstProject.repo;

import com.example.RiteshFirstProject.models.TransactionModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<TransactionModel,Integer> {
}
