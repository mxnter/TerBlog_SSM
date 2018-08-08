package com.terblog.dao;

import com.terblog.model.Article;
import com.terblog.model.Index;

import java.util.List;

public interface ArticleDao {

    public List<Article> findInforArticleById(String id);
}
