package com.javakurssi.spring.mvc.entity;

import java.util.Date;

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
    private String municipal;

    //check that date is not past date
    private Date activationDate;

}
