<%-- 
    Document   : session
    Created on : Jan 1, 2023, 7:12:32 PM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%!
          static int count=1;
    %>
    <%
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
    %>
    </body>
</html>
