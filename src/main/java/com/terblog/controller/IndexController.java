package com.terblog.controller;

import com.terblog.model.Index;
import com.terblog.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import org.apache.log4j.Logger;

@Controller
@RequestMapping(value = "")
public class IndexController {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    IndexService indexService;

    @RequestMapping(value = "i", method = RequestMethod.GET)
    public String index(Model model) {
        List<Index> indexs = indexService.list();
        log.info("[输入数据] 全部文章------> " + indexs);
        model.addAttribute("indexs",indexs); // 传参数给前端
        return "index";
    }


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String all(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew()){
            session.setAttribute("isLogin","n");
        }


        if(session.getAttribute("isLogin").equals("y") && !session.isNew()){

            if(session.getAttribute("administrator").equals("admin")){
                log.info("[输入数据] username------> " + session.getAttribute("username"));
                model.addAttribute("login","<a href=\"user\">欢迎："+session.getAttribute("username").toString()+"</a>　　　　　<a href=\"admin\">管理</a>　　　　　<a href=\"logout\">退出</a>");

            }else{
                log.info("[输入数据] username------> " + session.getAttribute("username"));
                model.addAttribute("login","<a href=\"user\">欢迎："+session.getAttribute("username").toString()+"</a>　　　　<a href=\"logout\">退出</a>");
                // model.addAttribute("login","<a href=\"login\">登陆</a>");
            }


        }else{
            model.addAttribute("login","<a href=\"login\">登陆</a>　　　　<a href=\"register\">注册</a>");
        }


        List<Index> indexs = indexService.list();
        log.info("[输出数据] 文章展示------> " + indexs);
        model.addAttribute("indexs",indexs); // 传参数给前端
        return "index";
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:./";
    }







}
