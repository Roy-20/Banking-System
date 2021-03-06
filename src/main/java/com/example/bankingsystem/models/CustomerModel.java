package com.example.bankingsystem.models;

import javax.persistence.*;

@Entity
@Table(name="customers")
public class CustomerModel {
    @Id @GeneratedValue
    private int serialNo;
    private String name;
    @Column(unique = true)
    private String email;
    private double currentBalance;

    public CustomerModel() {
    }

    public int getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(int serialNo) {
        this.serialNo = serialNo;
    }

    public CustomerModel(String name, String email, double currentBalance) {
        this.name = name;
        this.email = email;
        this.currentBalance = currentBalance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getCurrentBalance() {
        return currentBalance;
    }

    public void setCurrentBalance(double currentBalance) {
        this.currentBalance = currentBalance;
    }
}
