package com.example.crudapp;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Data
@Table(name = "demo_student")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Integer id;
    public String name;
    public String rollNo;
    public String emailId;
    public LocalDate dateOfBirth;
    public String gender;
    public String phoneNumber;
    public String address;
    public LocalDate enrollmentDate;
    public String major;
    public Double gpa;
    public String status;
    public String parentName;
    public String parentContact;
    public String aadharNumber;
    public String panNumber;
    
}
