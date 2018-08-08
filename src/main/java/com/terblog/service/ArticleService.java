package com.terblog.service;

import com.terblog.model.Article;
import com.terblog.model.Index;

import java.util.List;

public interface ArticleService {

    List<Article> findInforArticleById(String id);
}
