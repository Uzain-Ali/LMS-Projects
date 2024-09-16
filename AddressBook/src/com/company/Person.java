package com.company;

import javax.swing.*;

public class Person {
    private String name;
    private String phoneNo;
    private String address;
    private String email;

    //Standard Setters
    public void setName(String name){
        this.name = name;
    }
    public void setPhoneNo(String phoneNo){
        this.phoneNo = phoneNo;
    }

    public void setAddress(String address){
        this.address = address;
    }

    public void setEmail(String email){
        this.email = email;
    }



    //Standard Getter
    public String getName(){
        return name;
    }
    public String getPhoneNo(){
        return phoneNo;
    }
    public String getAddress(){
        return address;
    }
    public String getEmail(){
        return email;
    }

    //Parameterized Constructor
    public Person(String n,String a,String p,String em){
        setName(n);
        setPhoneNo(p);
        setAddress(a);
        setEmail(em);
    }

    //Method that display record on Screen
    public void print(){
        JOptionPane.showMessageDialog(null, "Name:"  + name + "\nPhone Number:" + phoneNo + "\nAddress:" + address + "\nEmail:" + email);
    }
}
