package com.terblog.controller;


import com.terblog.model.User;
import com.terblog.service.RegisterService;
import com.terblog.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping(value = "register")
public class RegisterController {
    @Resource
    RegisterService registerService;
    @Resource
    UserService userService;

    private Logger log = Logger.getLogger(this.getClass().getName());
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String register(Model model, HttpServletRequest request) {



        return "register";
    }
    @RequestMapping(value = "in", method = RequestMethod.POST)
    public String Inregister(Model model, User user, HttpServletRequest request) {

        if(!request.getParameter("c").equals("mter")){
            String msg = "对不起您的邀请码错误！";
            model.addAttribute("msg", msg);
            return "hint";
        }


        log.info("[输出数据] 查看文章------>" + user);
        Date date = new Date();
        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat sdatetame = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        user.setRegistrationdate(sdatetame.format(date));
        user.setHeadportrait("暂无");
        log.info("[输出数据] 查看文章------>" + user);

        registerService.Register(user);




        return "redirect:/login";
    }

}
