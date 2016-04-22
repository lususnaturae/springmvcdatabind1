package com.javakurssi.spring.mvc.databind;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by marco on 21.4.2016.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping(value = "/newuser", method = RequestMethod.GET)
    public String sensorForm() {
        return "/userform";
    }

    @RequestMapping(value = "/saveuser", method = RequestMethod.POST)
    public String post1(Model model,
                        @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
                        @RequestParam("email") String email, @RequestParam("age") String age, @RequestParam("municipal") String municipal,
                        @RequestParam("activationDate") String activationDate) {
        model.addAttribute("firstName", firstName);
        model.addAttribute("lastName", lastName);
        model.addAttribute("email", email);
        model.addAttribute("age", age);
        model.addAttribute("municipal", municipal);
        model.addAttribute("activationDate", activationDate);


        return "/showuserform";
    }

}
