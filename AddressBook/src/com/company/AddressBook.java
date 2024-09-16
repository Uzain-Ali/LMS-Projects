package com.company;

import javax.swing.*;
import java.util.ArrayList;

public class AddressBook {
    ArrayList<Person> persons;

    //Constructor
    public AddressBook(){
        persons = new ArrayList<Person>();
    }

    //add new person record to arraylist after taking input
    public void addPerson(){
        String name = JOptionPane.showInputDialog("Enter Name: ");
        String phone = JOptionPane.showInputDialog("Enter Phone Number:");
        String address = JOptionPane.showInputDialog("Enter Address:");
        String email = JOptionPane.showInputDialog("Enter Email:");
        //Construct new person object
        Person p = new Person(name,address,phone,email);
        //add the above Person object to arraylist
        persons.add(p);
    }
    //search person by name
    public void search(String name){
        for(int i=0;i<persons.size();i++){
            //Domcasting
            Person p = (Person)persons.get(i);
            if(name.equals(p.getName())){
                p.print();
            }
        }
    }

    //delete person by name
    public void delete(String name){
        for(int i=0;i<persons.size();i++){
            //Domcasting
            Person p = (Person)persons.get(i);
            if(name.equals(p.getName())){
                p.print();
                persons.remove(i);
            }
        }
    }
}
