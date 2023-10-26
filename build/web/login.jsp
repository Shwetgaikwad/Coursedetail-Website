<%-- 
    Document   : login
    Created on : Dec 25, 2022, 12:49:57 PM
    Author     : Admin
--%>




<%@page contentType="text/html" pageEncoding="UTF-8" import="javax.servlet.http.Cookie;" import="java.io.IOException" import="java.sql.*"
        import="java.lang.String"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
            String email= request.getParameter("email");
            String password=request.getParameter("pass");
           try{
               Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con =DriverManager.getConnection("jdbc:derby://localhost:1527/gaikwad", "shweta", "shweta");
                PreparedStatement pst =con.prepareStatement("Select email from REGISTER where email=? and password=?");
                pst.setString(1,email);
                pst.setString(2,password);
                ResultSet rs =pst.executeQuery();
                if (rs.next()) {%>
                            <jsp:forward page="coursedetail.html"/> <%}
                        else{
                             out.println("invalid");
}}
           catch(Exception e){
                    out.println("Something went wrong");
                               }%>
 </body>
</html>