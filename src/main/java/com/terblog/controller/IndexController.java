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
import java.util.List;
import org.apache.log4j.Logger;

@Controller
@RequestMapping(value = "")
public class IndexController {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    IndexService indexService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index(Model model) {
        List<Index> indexDaos = indexService.list();
        log.info("输出参数：" + indexDaos);
        model.addAttribute("indexDaos",indexDaos); // 传参数给前端
        return "index";
    }
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String all(Model model) {
        List<Index> indexDaos = indexService.list();
        log.info("输出参数：" + indexDaos);
        model.addAttribute("indexDaos",indexDaos); // 传参数给前端
        return "index";
    }







}
