package com.terblog.controller;


import com.terblog.model.Article;
import com.terblog.service.ArticleService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "article")
public class ArticleController {
    @Resource
    ArticleService articleService;
    private Logger log = Logger.getLogger(this.getClass().getName());

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model, ServletRequest request) {
        String id = request.getParameter("id");

        Article article = articleService.findInforArticleById(id);
        log.info("[输出数据] 查看文章------>" + article);

        model.addAttribute("article", article);


        return "article";
    }


}
