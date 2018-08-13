package com.terblog.service.impl;

import com.terblog.dao.ArticleDao;
import com.terblog.model.Article;
import com.terblog.service.ArticleService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticleImpl implements ArticleService {
    @Resource
    ArticleDao articleDao;
    private Logger log = Logger.getLogger(this.getClass().getName());

    //以Id查询文章
    public Article findInforArticleById(String id) {
        return articleDao.findInforArticleById(id);
    }

    //查看全部文章
    public List<Article> allArticle() {
        return articleDao.allArticle();
    }

    //查看回收站文章
    public List<Article> RecycledArticle() {
        return articleDao.RecycledArticle();
    }

    public List<Article> DraftArticle() {
        return articleDao.DraftArticle();
    }

    public void InRecycledArticle(String ArticleId) {
        articleDao.InRecycledArticle(ArticleId);
    }

    public void OutRecycledArticle(String ArticleId) {
        articleDao.OutRecycledArticle(ArticleId);
    }

    public void InDraftArticle(String ArticleId) {
        articleDao.InDraftArticle(ArticleId);
    }

    public void OutDraftArticle(String ArticleId) {
        articleDao.OutDraftArticle(ArticleId);
    }

    public void DeleteArticle(String ArticleId) {
        articleDao.DeleteArticle(ArticleId);
    }

    public void InNewArticle (Article INA) {
         articleDao.InNewArticle(INA);
    }

    public void InAlterArticle (Article IAA) {
        articleDao.InAlterArticle(IAA);
    }
}
