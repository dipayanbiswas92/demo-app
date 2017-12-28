package com.example.demo.beans;

@Document(collection="employees")
public class Employee {
 
    @Id
    private String id; 
     
    private String email;
    private String fullName;
    private String managerEmail;
 
 // getters and setters omitted for brevity
}
