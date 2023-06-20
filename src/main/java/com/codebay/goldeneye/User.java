package com.codebay.goldeneye;

public class User {
    private String firstName;
    private String surname;
    private String office;
    private String department;


    public User() {}

    public User(String firstName, String surname, String office, String department) {
        this.firstName = firstName;
        this.surname = surname;
        this.office = office;
        this.department = department;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSurname() {
        return this.surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getOffice() {
        return this.office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getDepartment() {
        return this.department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
