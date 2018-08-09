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

    //以Id查询文章
    public List<Article> findInforArticleById(String id){
        return articleDao.findInforArticleById(id);
    }

    //查看全部文章
    public List<Article> allArticle(){return articleDao.allArticle();}

    //查看回收站文章
    public List<Article> RecycledArticle(){return articleDao.RecycledArticle();}

    public List<Article>  DraftArticle(){return articleDao.DraftArticle();}

    public void UpRecycledArticle (String ArticlesId){}
}
