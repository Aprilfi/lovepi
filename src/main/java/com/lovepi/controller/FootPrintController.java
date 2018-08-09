package com.lovepi.controller;

import com.lovepi.bean.FootPrint;
import com.lovepi.service.FootPrintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/footPrint")
public class FootPrintController {

    @Autowired
    private FootPrintService footPrintService;

    @ResponseBody
    @RequestMapping("/list.do")
    public List<FootPrint> list() {
        return footPrintService.list();
    }

    @ResponseBody
    @RequestMapping("listAdd.do")
    public String listAdd(FootPrint footPrint) {
        System.out.printf("footPrint:%s",footPrint.toString());
        boolean state = footPrintService.listAdd(footPrint);

        if(state) {
            return "success";
        }
        return "failure";
    }

    //只需要加上下面这段即可，注意不能忘记注解
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {

        //转换日期
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }

}
