package com.terblog.dao;

import com.terblog.model.Article;

import java.util.List;

public interface ArticleDao {

    public Article findInforArticleById(String id);

    List<Article> allArticle();

    List<Article> RecycledArticle();

    List<Article> DraftArticle();

    void InRecycledArticle(String ArticleId);

    void OutRecycledArticle(String ArticleId);

    void InDraftArticle(String ArticleId);

    void OutDraftArticle(String ArticleId);

    void DeleteArticle(String ArticleId);

}
