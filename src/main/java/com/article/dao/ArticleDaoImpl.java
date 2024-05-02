package com.article.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.article.entity.Article;

@Repository
public class ArticleDaoImpl implements ArticleDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveArticle(Article article) {
		int i = (Integer) hibernateTemplate.save(article);
		return i;
	}

	public Article getArticleById(int id) {
		Article article = hibernateTemplate.get(Article.class, id);
		return article;
	}

	
	public List<Article> getAllArticle() {
		List<Article> list= hibernateTemplate.loadAll(Article.class);
		return list;
	}

	@Transactional
	public void update(Article article) {
		hibernateTemplate.update(article);

	}

	@Transactional
	public void deleteArticle(int id) {
		Article article = hibernateTemplate.get(Article.class, id);
		hibernateTemplate.delete(article);

	}

}
