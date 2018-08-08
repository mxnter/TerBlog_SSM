package com.terblog.controller;


import com.terblog.model.User;
import com.terblog.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
/*
*   @question 问题解决
*   @data 2018年8月7日
*   @time 16点20分
*   @author mxnter
*
* */
@Controller
@RequestMapping(value = "user")
public class UserController {
    @Resource
    UserService userService;
    private Logger log = Logger.getLogger(this.getClass().getName());


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String user(Model model,HttpServletRequest request,String username) {

        HttpSession session = request.getSession();

        if(session.getAttribute("isLogin").equals("y") && !session.isNew()){
            username=session.getAttribute("username").toString();
            String userid =session.getAttribute("userid").toString();
            log.info("输如参数2：" +username+"  id："+userid);
            List<User> users = userService.findInformationByUserName(username);
            log.info("用户信息：" +users);
            model.addAttribute("users",users);
            return "user";

        }else{
            return "login";
        }


    }

}
