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
 *   @date 2018年8月7日
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
    public String user(Model model, HttpServletRequest request, String username) {

        HttpSession session = request.getSession();

        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:login";
        }catch (Exception e){
            return "redirect:login";
        }


        username = session.getAttribute("username").toString();
        String userid = session.getAttribute("userid").toString();
        log.info("[输入信息] 获取用户ID------> username：" + username + "  id：" + userid);
        User user = userService.findInformationByUserName(username);
        log.info("[输出信息] 返回用户数据------>" + user);
        model.addAttribute("user", user);
        return "user";

    }

    @RequestMapping(value = "forget", method = RequestMethod.GET)
    public String user_forget(Model model, HttpServletRequest request) {

        String msg = "未开启，忘记密码功能！";
        model.addAttribute("msg", msg);
        return "hint";

    }


}
