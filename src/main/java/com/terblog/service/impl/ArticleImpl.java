package com.terblog.service.impl;

import com.terblog.dao.ArticleDao;
import com.terblog.model.Article;
import com.terblog.model.Index;
import com.terblog.service.ArticleService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticleImpl implements ArticleService {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    ArticleDao articleDao;

    public List<Article> findInforArticleById(String id){
        return articleDao.findInforArticleById(id);
    }
}
