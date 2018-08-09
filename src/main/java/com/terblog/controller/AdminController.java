package com.terblog.controller;


import com.terblog.model.Admin;
import com.terblog.model.Article;
import com.terblog.model.Inform;
import com.terblog.model.User;
import com.terblog.service.AdminService;
import com.terblog.service.ArticleService;
import com.terblog.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    AdminService adminService;
    @Resource
    ArticleService articleService;
    @Resource
    UserService userService;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String admin(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();

        if(session.isNew() || session.getAttribute("isLogin").equals("n") )
            return "redirect:login";


        String useramount = adminService.useramount();
        String articleamount =adminService.articleamount();
        Inform inform = adminService.inform();

        model.addAttribute("useramount",useramount);
        model.addAttribute("articleamount",articleamount);
        model.addAttribute("inform",inform);

       // log.info("[输入数据] amount------> " + useramount+articleamount);

        return "admin";
    }


    @RequestMapping(value = "table", method = RequestMethod.GET)
    public String admin_table(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();

        if(session.isNew() || session.getAttribute("isLogin").equals("n") )
            return "redirect:login";


        return "table";
    }


    @RequestMapping(value = "Article", method = RequestMethod.GET)
    public String admin_Management_Articles(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();

        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";


        List<Article> articles = articleService.allArticle();
        model.addAttribute("articles",articles); // 传参数给前端

        return "ma";
    }


    @RequestMapping(value = "Recycled", method = RequestMethod.GET)
    public String admin_Recycled_Articles(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";
        List<Article> articles = articleService.RecycledArticle();
        model.addAttribute("articles",articles); // 传参数给前端

        return "recycled";
    }

    @RequestMapping(value = "Draft", method = RequestMethod.GET)
    public String admin_Draft_Articles(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";
        List<Article> articles = articleService.DraftArticle();
        model.addAttribute("articles",articles); // 传参数给前端

        return "draft";
    }
    @RequestMapping(value = "UpRecycledArticle", method = RequestMethod.GET)
    public String admin_UpRecycledArticle_Articles(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";
        log.info("[输出数据] 查看文章------>"+request.getParameter("ArticlesId"));
        articleService.UpRecycledArticle(request.getParameter("ArticlesId"));
        return "redirect:./Article";
    }


    //--------------------------------------用户------------------------------------//

    @RequestMapping(value = "User", method = RequestMethod.GET)
    public String admin_Management_Users(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";
        List<User> users = userService.allUser() ;
        model.addAttribute("users",users); // 传参数给前端

        return "mu";
    }

    @RequestMapping(value = "ForbiddenUser", method = RequestMethod.GET)
    public String admin_Forbidden_Users(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.isNew() || session.getAttribute("isLogin").equals("n"))return "redirect:login";
        List<User> users = userService.forbiddenUser() ;
        model.addAttribute("users",users); // 传参数给前端

        return "forbidden";
    }



}
