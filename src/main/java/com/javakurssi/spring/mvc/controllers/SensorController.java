package com.javakurssi.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by marco on 21.4.2016.
 */
@Controller
@RequestMapping("/sensor")
public class SensorController {

    @RequestMapping("/newsensorform")
    public String sensorForm() {
        return "/sensorform";
    }

}
