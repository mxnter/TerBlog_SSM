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
import java.util.List;


@Controller
@RequestMapping("ad")
public class AdController {
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

        if (session.isNew() || session.getAttribute("isLogin").equals("n"))
            return "redirect:login";


        String useramount = adminService.useramount();
        String articleamount = adminService.articleamount();
        Inform inform = adminService.inform();

        model.addAttribute("useramount", useramount);
        model.addAttribute("articleamount", articleamount);
        model.addAttribute("inform", inform);

        // log.info("[输入数据] amount------> " + useramount+articleamount);

        return "ad/admin";
    }


    @RequestMapping(value = "table", method = RequestMethod.GET)
    public String admin_table(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();

        if (session.isNew() || session.getAttribute("isLogin").equals("n"))
            return "redirect:login";


        return "ad/table";
    }


    @RequestMapping(value = "Article", method = RequestMethod.GET)
    public String admin_Management_Article(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();

        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";


        List<Article> articles = articleService.allArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "ad/ma";
    }


    @RequestMapping(value = "Recycled", method = RequestMethod.GET)
    public String admin_RecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        List<Article> articles = articleService.RecycledArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "ad/recycled";
    }

    @RequestMapping(value = "Draft", method = RequestMethod.GET)
    public String admin_DraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        List<Article> articles = articleService.DraftArticle();
        model.addAttribute("articles", articles); // 传参数给前端

        return "ad/draft";
    }

    @RequestMapping(value = "InRecycledArticle", method = RequestMethod.GET)
    public String admin_InRecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        articleService.InRecycledArticle(request.getParameter("ArticleId"));
        return "redirect:./Article";
    }


    @RequestMapping(value = "OutRecycledArticle", method = RequestMethod.GET)
    public String admin_OutRecycledArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        log.info("[输出数据] 查看文章------>" + request.getParameter("ArticleId"));
        articleService.OutRecycledArticle(request.getParameter("ArticleId"));
        return "redirect:./Recycled";
    }

    @RequestMapping(value = "InDraftArticle", method = RequestMethod.GET)
    public String admin_InDraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        articleService.InDraftArticle(request.getParameter("ArticleId"));
        return "redirect:./Draft";
    }

    @RequestMapping(value = "OutDraftArticle", method = RequestMethod.GET)
    public String admin_OutDraftArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        log.info("[输出数据] 查看文章------>" + request.getParameter("ArticleId"));
        articleService.OutDraftArticle(request.getParameter("ArticleId"));
        return "redirect:./Draft";
    }

    @RequestMapping(value = "DeleteArticle", method = RequestMethod.GET)
    public String admin_DeleteArticle(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        articleService.DeleteArticle(request.getParameter("ArticleId"));
        return "redirect:./Recycled";
    }


    //--------------------------------------用户------------------------------------//

    @RequestMapping(value = "User", method = RequestMethod.GET)
    public String admin_ManagementUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        List<User> users = userService.allUser();
        model.addAttribute("users", users); // 传参数给前端

        return "ad/mu";
    }

    @RequestMapping(value = "ForbiddenUser", method = RequestMethod.GET)
    public String admin_ForbiddenUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        List<User> users = userService.forbiddenUser();
        model.addAttribute("users", users); // 传参数给前端

        return "ad/forbidden";
    }

    @RequestMapping(value = "StartUser", method = RequestMethod.GET)
    public String admin_StartUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        userService.StartUser(request.getParameter("UserId"));
        return "redirect:./User";
    }

    @RequestMapping(value = "BlockUser", method = RequestMethod.GET)
    public String admin_BlockUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        userService.BlockUser(request.getParameter("UserId"));
        return "redirect:./User";
    }

    @RequestMapping(value = "DeleteUser", method = RequestMethod.GET)
    public String admin_DeleteUser(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        userService.DeleteUser(request.getParameter("UserId"));
        return "redirect:./User";
    }


}
