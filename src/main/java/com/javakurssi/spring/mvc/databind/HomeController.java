package com.javakurssi.spring.mvc.databind;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by marco on 21.4.2016.
 */
@Controller
public class HomeController {

    @RequestMapping(value = {"/", ""})
    public String thisIsHome() {
        return "/home";
    }
}
