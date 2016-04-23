package com.javakurssi.spring.mvc.validators;

import com.javakurssi.spring.mvc.entity.User;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by marco on 23.4.2016.
 */
public class UserValidator implements Validator{

    private Pattern pattern;
    private Matcher matcher;

    private static final String EMAIL_PATTERN = "[@]*[.]";

    /**
     *  This validator validates only User instances
     */
    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors e) {

        ValidationUtils.rejectIfEmptyOrWhitespace(e, "firstName", "firstName.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "lastName", "lastName.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "email", "email.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "age", "age.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "municipal", "municipal.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "activationDate", "activationDate.empty");

        pattern = Pattern.compile(EMAIL_PATTERN);
        User u = (User) obj;
        matcher = pattern.matcher(u.getEmail());
        if (!matcher.matches()) {
            e.rejectValue("email", "email.not.correct.format");
        }
        if (u.getAge() < 18) {
            e.rejectValue("age", "age.too.young");
        } else if (u.getAge() > 110) {
            e.rejectValue("age", "age.too.old");
        }

    }

}
