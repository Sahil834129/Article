package com.article.conttroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.article.dao.ArticleDao;
import com.article.entity.Article;

@Controller
public class HomeController {

	@Autowired
	private ArticleDao articleDao;

	@RequestMapping(path = "/article")
	public String article() {

		return "article";
	}

	@RequestMapping(path = "/list")
	public String list(Model m) {
		List<Article> list = articleDao.getAllArticle();
		m.addAttribute("articleList", list);
		return "list";
	}

	@RequestMapping(path = "/createArticle", method = RequestMethod.POST)
	public String createAssigment(@ModelAttribute Article article, HttpSession session) {
		System.out.println(article);

		int i = articleDao.saveArticle(article);

		session.setAttribute("msg", "Artical Save Sucessfuly");

		return "redirect:/article";
	}

	@RequestMapping(path = "/editArticle/{id}")
	public String editArticle(@PathVariable int id, Model m) {

		Article article = articleDao.getArticleById(id);
		m.addAttribute("article", article);
		return "edit";
	}

	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
	public String updateArticle(@ModelAttribute Article article) {
		articleDao.update(article);
		return "list";
	}

}
