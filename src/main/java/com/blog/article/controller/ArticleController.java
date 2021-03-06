package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleService service;
    @RequestMapping(value="/{p}",method=RequestMethod.GET)
    public String page(@PathVariable int p,Model m){
        Article article = service.findOne(p);
        if(article!=null){
            System.out.println(article);
        }
        m.addAttribute("obj",article);
        return "/home/page";
    }
    @RequestMapping("/newArticle")
    @ResponseBody
    public List<Article> newArticle(){
        return service.newArticle();
    }
    @RequestMapping("/mostView")
    @ResponseBody
    public List<Article> mostView(){return service.mostView(); }
    @RequestMapping("/mostComment")
    @ResponseBody
    public List<Article> mostComment(){return service.mostComment();}
}
