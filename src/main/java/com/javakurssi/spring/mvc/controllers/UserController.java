package com.javakurssi.spring.mvc.controllers;

import com.javakurssi.spring.mvc.entity.User;
import com.javakurssi.spring.mvc.validators.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * Created by marco on 21.4.2016.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserValidator validator;


    @RequestMapping(value = "/newuser", method = RequestMethod.GET)
    public String sensorForm(Model model) {
        User user = new User();
        model.addAttribute("userForm", user);
        return "/userform";
    }

    @RequestMapping(value = "/showuser", method = RequestMethod.POST)
    public String showuserForm(@Valid @ModelAttribute("userForm") User user, BindingResult result, Model model) {

        validator.validate(user, result);
        model.addAttribute("userForm", user);
        model.addAttribute("testi", "TOINEN LATAUS");
        if (result.hasErrors())
        {
            return "/userform";
        }
        return "/showuserform";
    }

}
