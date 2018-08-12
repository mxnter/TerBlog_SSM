package com.terblog.controller;

import com.terblog.model.Index;
import com.terblog.service.IndexService;
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
@RequestMapping(value = "")
public class IndexController {
    @Resource
    IndexService indexService;
    @Resource
    UserService userService;
    private Logger log = Logger.getLogger(this.getClass().getName());

    @RequestMapping(value = "i", method = RequestMethod.GET)
    public String index(Model model) {
        List<Index> indexs = indexService.list();
        log.info("[输入数据] 全部文章------> " + indexs);
        model.addAttribute("indexs", indexs); // 传参数给前端
        return "index";
    }


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String all(Model model, HttpServletRequest request) {




        List<Index> indexs = indexService.list();
        log.info("[输出数据] 文章展示------> " + indexs);
        model.addAttribute("indexs", indexs); // 传参数给前端
        return "index";
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:./";
    }


    @RequestMapping(value = "ChangePassword", method = RequestMethod.POST)
    public String ChangePassword(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";
        log.info("[输出数据] 文章展示------> " + request.getParameter("username") + request.getParameter("password"));

        if (!request.getParameter("password").equals(request.getParameter("affirmpassword"))) {
            String msg = "修改失败，密码和确认密码不一致";
            model.addAttribute("msg", msg);
            return "cp";
        }
        userService.ChangePassword(request.getParameter("username"), request.getParameter("password"));
        // String	msg="修改成功"+"<a href=\"${pageContext.request.contextPath}\">返回首页</a>";
        // model.addAttribute("msg",msg);
        session.setAttribute("isLogin", "n");
        return "redirect:./login";
    }


    @RequestMapping(value = "cp", method = RequestMethod.GET)
    public String CP(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.isNew() || session.getAttribute("isLogin").equals("n")) return "redirect:login";

        return "cp";
    }

    @RequestMapping(value = "hint", method = RequestMethod.GET)
    public String hint(Model model, HttpServletRequest request) {


        String msg = request.getParameter("msg");
        model.addAttribute("msg", msg);
        return "hint";
    }


}
