package com.codecool.dishtrack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by joker on 2017.06.22..
 */


@WebServlet("/demo")
public class ServletDemo extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{

//        PrintWriter out = response.getWriter();
//        out.println("<html>");
//        out.println("<body>");
//        out.println("<h1> Hello World </h1>");
//        out.println("</body>");
//        out.println("</html>");
        try {
            request.getRequestDispatcher("index.html").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

}
