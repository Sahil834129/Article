package com.article.dao;

import java.util.List;

import com.article.entity.Article;

public interface ArticleDao {

	public int saveArticle(Article article);

	public Article getArticleById(int id);

	public List<Article> getAllArticle();

	public void update(Article article);

	public void deleteArticle(int id);
}
