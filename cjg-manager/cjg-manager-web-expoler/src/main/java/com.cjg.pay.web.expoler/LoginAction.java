package com.cjg.pay.web.expoler;

import com.cjg.pay.pojo.po.RpUserInfo;
import com.cjg.pay.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: 。。。
 * Date: 2017/10/25
 * Time: 17:35
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class LoginAction {

    @Autowired
    private UserInfoService userService;


    @RequestMapping("/")
    public String index(){
        return "login";
    }

    @ResponseBody
    @RequestMapping("/login")
    public Integer login(RpUserInfo userInfo){
        int result = userService.login(userInfo);
        if (result!=1){
            return result;
        }
        return result;
    }

    @RequestMapping("/index")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping("/registration")
    public String registration(){
        return "registration";
    }

    @ResponseBody
    @RequestMapping("/checkUsername")
    public int checkUsername(RpUserInfo userInfo){
        int result = userService.checkUsername(userInfo);
        return result;
    }


    @RequestMapping("/regist")
    public String regist(RpUserInfo userInfo){
        int result = userService.saveUser(userInfo);
        return "redirect:/";
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
}
