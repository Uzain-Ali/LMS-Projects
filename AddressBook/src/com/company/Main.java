package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        AddressBook basim = new AddressBook();
        String input,s;
        int saqib;
        while (true){
            input = JOptionPane.showInputDialog("Enter A to Add:" + "\nEnter  S to Search:" + "\nEnter D to Delete" + "\nEnter X to Exit:");
            saqib = Integer.parseInt(input);

            switch(saqib){
                case 1:
                    basim.addPerson();
                    break;
                case 2:
                    s = JOptionPane.showInputDialog("Enter name to Search:");
                    basim.search(s);
                    break;
                case 3:
                    s = JOptionPane.showInputDialog("Enter name to delete:");
                    basim.delete(s);
                    break;
                case 0:
                    System.exit(0);

            }
        }
    }
}
