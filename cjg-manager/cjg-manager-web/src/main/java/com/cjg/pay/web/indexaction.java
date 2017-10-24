package com.cjg.pay.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: 。。。
 * Date: 2017/10/21
 * Time: 18:34
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class indexaction {

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;

    }

}
