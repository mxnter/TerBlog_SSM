package com.terblog.controller;


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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("admin")
public class AdminController {
    @Resource
    AdminService adminService;
    @Resource
    ArticleService articleService;
    @Resource
    UserService userService;
    private Logger log = Logger.getLogger(this.getClass().getName());

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String admin(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();

        try {
            if (session.getAttribute("isLogin").equals("n")) return "redirect:login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:./";
        } catch (Exception e) {
            return "redirect:login";
        }

        //if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";


        String useramount = adminService.useramount();
        String articleamount = adminService.articleamount();
        Inform inform = adminService.inform();
        String informamount = adminService.informamount();
        List<Inform> informs = adminService.allinforma();

        model.addAttribute("useramount", useramount);
        model.addAttribute("articleamount", articleamount);
        //model.addAttribute("inform", inform);
        session.setAttribute("inform", inform);
        model.addAttribute("informamount", informamount);
        model.addAttribute("informs", informs);


        return "admin/admin";
    }


    @RequestMapping(value = "table", method = RequestMethod.GET)
    public String admin_table(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();

        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }


        return "admin/table";
    }


    @RequestMapping(value = "Article", method = RequestMethod.GET)
    public String admin_Management_Article(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();

        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        List<Article> articles = articleService.allArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "admin/ma";
    }


    @RequestMapping(value = "Recycled", method = RequestMethod.GET)
    public String admin_RecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        List<Article> articles = articleService.RecycledArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "admin/recycled";
    }

    @RequestMapping(value = "Draft", method = RequestMethod.GET)
    public String admin_DraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        List<Article> articles = articleService.DraftArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "admin/draft";
    }

    @RequestMapping(value = "InRecycledArticle", method = RequestMethod.GET)
    public String admin_InRecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        log.info("[输出数据] 查看文章------>" + request.getParameter("ArticleId"));
        articleService.InRecycledArticle(request.getParameter("ArticleId"));
        return "redirect:./Article";
    }


    @RequestMapping(value = "OutRecycledArticle", method = RequestMethod.GET)
    public String admin_OutRecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        articleService.OutRecycledArticle(request.getParameter("ArticleId"));
        return "redirect:./Recycled";
    }

    @RequestMapping(value = "InDraftArticle", method = RequestMethod.GET)
    public String admin_InDraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        log.info("[输出数据] 查看文章------>" + request.getParameter("ArticleId"));
        articleService.InDraftArticle(request.getParameter("ArticleId"));
        return "redirect:./Draft";
    }

    @RequestMapping(value = "OutDraftArticle", method = RequestMethod.GET)
    public String admin_OutDraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        articleService.OutDraftArticle(request.getParameter("ArticleId"));
        return "redirect:./Draft";
    }

    @RequestMapping(value = "DeleteArticle", method = RequestMethod.GET)
    public String admin_DeleteArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        log.info("[输出数据] 查看文章------>" + request.getParameter("ArticleId"));
        articleService.DeleteArticle(request.getParameter("ArticleId"));
        return "redirect:./Recycled";
    }

    @RequestMapping(value = "NewArticle", method = RequestMethod.GET)
    public String admin_NewArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }


        return "admin/newarticle";
    }

    @RequestMapping(value = "InNewArticle", method = RequestMethod.POST)
    public String admin_InNewArticle(Model model, Article article, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        Date date = new Date();
        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd ");
        SimpleDateFormat stime = new SimpleDateFormat("HH:mm:ss");
        article.setDate(sdate.format(date));
        article.setTime(stime.format(date));


        articleService.InNewArticle(article);


        return "redirect:./Article";
    }

    @RequestMapping(value = "AlterArticle", method = RequestMethod.GET)
    public String admin_AlterArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }


        Article article = articleService.findInforArticleById(request.getParameter("ArticleId"));

        model.addAttribute("article", article);

        return "admin/alterarticle";
    }

    @RequestMapping(value = "InAlterArticle", method = RequestMethod.POST)
    public String admin_InAlterArticle(Model model, Article article, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        Date date = new Date();
        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd ");
        SimpleDateFormat stime = new SimpleDateFormat("HH:mm:ss");
        log.info("[输出数据] 查看文章------>" + article);
        article.setDate(sdate.format(date));
        article.setTime(stime.format(date));


        articleService.InAlterArticle(article);

        return "redirect:./Article";
    }


    //--------------------------------------用户------------------------------------//

    @RequestMapping(value = "User", method = RequestMethod.GET)
    public String admin_ManagementUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        List<User> users = userService.allUser();
        model.addAttribute("users", users); // 传参数给前端

        return "admin/mu";
    }

    @RequestMapping(value = "ForbiddenUser", method = RequestMethod.GET)
    public String admin_ForbiddenUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }
        List<User> users = userService.forbiddenUser();
        model.addAttribute("users", users); // 传参数给前端

        return "admin/forbidden";
    }

    @RequestMapping(value = "StartUser", method = RequestMethod.GET)
    public String admin_StartUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        userService.StartUser(request.getParameter("UserId"));
        return "redirect:./User";
    }

    @RequestMapping(value = "BlockUser", method = RequestMethod.GET)
    public String admin_BlockUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        userService.BlockUser(request.getParameter("UserId"));
        return "redirect:./User";
    }

    @RequestMapping(value = "DeleteUser", method = RequestMethod.GET)
    public String admin_DeleteUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        userService.DeleteUser(request.getParameter("UserId"));
        return "redirect:./ForbiddenUser";
    }

    @RequestMapping(value = "NewUser", method = RequestMethod.GET)
    public String admin_NewUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        return "admin/newuser";
    }

    @RequestMapping(value = "InNewUser", method = RequestMethod.POST)
    public String admin_InNewUser(Model model, User user, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        log.info("[输出数据] 查看文章------>" + user);
        Date date = new Date();
        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat sdatetame = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        user.setRegistrationdate(sdatetame.format(date));
        user.setHeadportrait("暂无");

        userService.InNewUser(user);


        return "redirect:./User";
    }

    @RequestMapping(value = "AlterUser", method = RequestMethod.GET)
    public String admin_AlterUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }

        User user = userService.findInformationByUserId(request.getParameter("UserId"));
        model.addAttribute("user", user);


        return "admin/alteruser";
    }

    @RequestMapping(value = "InAlterUser", method = RequestMethod.POST)
    public String admin_InAlterUser(Model model, User user, HttpServletRequest request) {
        HttpSession session = request.getSession();
        try {
            if(session.getAttribute("isLogin").equals("n"))return "redirect:../login";
            if (session.isNew() || session.getAttribute("administrator").equals("user")) return "redirect:../";
        }catch (Exception e){
            return "redirect:../login";
        }


        Date date = new Date();
        //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
        SimpleDateFormat sdatetame = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        user.setRegistrationdate(sdatetame.format(date));
        user.setHeadportrait("暂无");

        userService.InAlterUser(user);


        return "redirect:./User";
    }





//    -------------------------------------------判断是否是未登陆，不是管理员


}
