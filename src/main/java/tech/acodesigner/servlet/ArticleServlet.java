package tech.acodesigner.servlet;

import tech.acodesigner.dao.ArticleDao;
import tech.acodesigner.dto.ArticleDto;
import tech.acodesigner.dto.ArticleLiteDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by 77239 on 2017/2/19/0019.
 */
@WebServlet(name = "ArticleServlet", urlPatterns = "/article")
public class ArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("articleId");
            ArticleDto article = ArticleDao.getArticleById(Integer.parseInt(id));
            ArticleDao.addClicks(article.getClicks(),Integer.parseInt(id));
            ArticleLiteDto preArticle = ArticleDao.getPreArticle(Integer.parseInt(id));
            ArticleLiteDto nextArticle = ArticleDao.getNextArticle(Integer.parseInt(id));
            request.setAttribute("article", article);
            request.setAttribute("preArticle", preArticle);
            request.setAttribute("nextArticle", nextArticle);
            request.setAttribute("mainPage", "articleDetail.jsp");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
