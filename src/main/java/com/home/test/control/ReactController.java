package com.home.test.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ReactController {
    @RequestMapping("/")
    public String firstController(Model model){
        return "index";
    }
    @RequestMapping("/aa")
    public String seController(Model model){
        return "first";
    }

}
