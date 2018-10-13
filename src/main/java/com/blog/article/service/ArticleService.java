package com.blog.article.service;

import com.blog.article.dao.ArticleDao;
import com.blog.article.entity.Article;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticleService {
    @Autowired
    private ArticleDao dao;
    public List<Article> getPage(int page){
        return dao.getPage(page*4);
    }
    public Article findOne(int id){
        return dao.findOne(id);
    }
    public String newArticle(){return dao.newArticle();}
}
