package com.javakurssi.spring.mvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * Created by marco on 22.4.2016.
 */
public class User {

    // check that firstName has no numbers and length is more than 1 character
    private String firstName;

    // optional. check that there is no numbers
    private String lastName;

    //check that email has @ and after that . characters
    private String email;

    //check that age > 18
    private int Age;

    // check that municipal is Tampere or Kangasala
    private List<String> municipals;

    //check that date is not past date
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date activationDate;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int age) {
        Age = age;
    }

    public List<String> getMunicipals() {
        return municipals;
    }

    public void setMunicipals(List<String> municipals) {
        this.municipals = municipals;
    }

    public Date getActivationDate() {
        return activationDate;
    }

    public void setActivationDate(Date activationDate) {
        this.activationDate = activationDate;
    }

}
