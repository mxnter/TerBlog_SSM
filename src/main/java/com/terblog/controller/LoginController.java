package com.terblog.controller;


import com.terblog.model.Index;
import com.terblog.model.Login;
import com.terblog.model.User;
import com.terblog.service.LoginService;
import com.terblog.service.UserService;
import com.terblog.service.impl.LoginImpl;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "login")
public class LoginController {
    @Resource
    LoginService loginService;
//    @Resource
//    UserService userService;

    private Logger log = Logger.getLogger(this.getClass().getName());

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String nologin(Model model, HttpServletRequest request) {

        HttpSession session = request.getSession();
        if(session.getAttribute("isLogin").equals("y") && !session.isNew()){
            return "redirect:./";
        }else{
            return "login";
        }



    }


    @RequestMapping(value = "", method = RequestMethod.POST)
    public String login(Model model, Login param, HttpServletRequest request,Map<String, Object> map) throws UnsupportedEncodingException {
        log.info("[输入数据] 登陆信息------>" +param);
        List<Login> logins = loginService.findInformationByUserName(param);

        HttpSession session = request.getSession();
        int length = logins.size();

        if (length == 0){
            log.info("[提示信息] 登陆失败------> 用户名或密码错误" );
            String	msg="用户名密码输入错误";
            model.addAttribute("msg",msg);
            return "login";
        }else {
            Login login=logins.get(0);
            if(login.getState()==1){
                log.info("[提示信息] 登陆失败------> 用户名或密码错误" );
                String	msg="用户已被禁用";
                model.addAttribute("msg",msg);
                return "login";
            }




            //List<User> users = userService.findInformationByUserName(login.getUsername());


            String administrator = login.getAdministrator();
            session.setAttribute("username",login.getUsername());
            session.setAttribute("userid",login.getId());
            session.setAttribute("administrator",login.getAdministrator());
            session.setAttribute("isLogin","y");
            //session.setAttribute("users",users);
            log.info("[输出数据] 查看登陆信息------>" + login);
            log.info("[输出数据] 查看会话userame------>" + session.getAttribute("username"));
            if(administrator.equals("admin")){
                return "redirect:admin";
            }else{
                return "redirect:./";
            }



        }
       // log.info("输出参数：" + loginDaos);
       // model.addAttribute("loginDaos",loginDaos); // 传参数给前端

    }
}
