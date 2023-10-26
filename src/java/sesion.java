/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class sesion extends HttpServlet {
    static int count=1;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sesion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sesion at " + request.getContextPath() + "</h1>");
             HttpSession mysession=request.getSession(true);
            if(mysession.isNew()){
                out.println("Welcome");
                count=0;
            }
            else{
                out.println("Welcome Back <br>");
                count++;
            }
            out.println("<br> The Session Id is:"+mysession.getId());
            out.println("<br> Session Started at:"+ new Date(mysession.getCreationTime()));
            out.println("<br> Last Access time:" + new Date(mysession.getLastAccessedTime()));
            out.println("</body>");
            out.println("</html>");
        }
    }  
}
