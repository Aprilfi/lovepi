package com.lovepi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class PageController {

    @RequestMapping("/footPrint")
    public String footPrint() {
        return "footPrint";
    }

}
