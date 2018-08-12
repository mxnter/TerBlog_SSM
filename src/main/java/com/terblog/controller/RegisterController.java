package com.terblog.controller;


import com.terblog.service.RegisterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping(value = "register")
public class RegisterController {
    @Resource
    RegisterService registerService;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String register(Model model, HttpServletRequest request) {



        return "register";
    }
    @RequestMapping(value = "In", method = RequestMethod.POST)
    public String Inregister(Model model, HttpServletRequest request) {



        return "redirect:./";
    }

}
