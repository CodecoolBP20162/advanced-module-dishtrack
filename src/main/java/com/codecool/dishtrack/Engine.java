package com.codecool.dishtrack;

//import org.thymeleaf.TemplateEngine;
//import org.thymeleaf.context.WebContext;
//import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/**
 * Created by joker on 2017.06.22..
 */
@WebServlet("/demo1")
public class Engine extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////        ServletContextTemplateResolver templateResolver = new ServletContextTemplateResolver();
//        ClassLoaderTemplateResolver templateResolver = new ClassLoaderTemplateResolver();
//        // XHTML is the default mode, but we will set it anyway for better understanding of code
//        templateResolver.setTemplateMode("XHTML");
//        templateResolver.setPrefix("/WEB-INF/");
//        templateResolver.setSuffix(".html");
//        templateResolver.setCacheTTLMs(3600000L);
//        TemplateEngine templateEngine = new TemplateEngine();
//        templateEngine.setTemplateResolver(templateResolver);
//        WebContext ctx = new WebContext(req, resp, getServletConfig().getServletContext(), req.getLocale());
//        // This will be prefixed with /WEB-INF/ and suffixed with .html
//        templateEngine.process("thymeleaf", ctx, resp.getWriter());
//        resp.setContentType("text/html;charset=UTF-8");
//        resp.setHeader("Pragma", "no-cache");
//        resp.setHeader("Cache-Control", "no-cache");
//        resp.setDateHeader("Expires", 1000);

        try {
            req.setAttribute("product", "good");
            req.getRequestDispatcher("index.html").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }
}

