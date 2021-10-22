package com.example.LoginDemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class AuthController {

    @GetMapping("/")
    public String home()
    {
        return "home";
    }
    @GetMapping("/showMyLoginPage")
    public String show()
    {
        return "custlogin";
    }
    @RequestMapping("/guest")
    public String guest(Map<String, Object> model) {
        return "guest";
    }
    @RequestMapping("/access-denied")
    public String accessdenied(Map<String, Object> model) {
        return "access-denied";
    }
    @RequestMapping("/admin")
    public String admin(Map<String, Object> model) {
        return "admin";
    }

}
