package com.smallT.articleManage.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kev.team.framework.dao.mybatis.sqlmapper.SqlMapper;
import com.smallT.articleManage.entity.Article;

@Repository
public interface ArticleManageDao extends SqlMapper{
	public void insertArticle(Article article);
	public List<Article> selectArticle();
}
