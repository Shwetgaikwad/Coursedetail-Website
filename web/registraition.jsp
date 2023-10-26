<%-- 
    Document   : registraition
    Created on : Dec 24, 2022, 1:03:28 PM
    Author     : Admin
--%>



 
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
           String n1= request.getParameter("name");
            String n2= request.getParameter("gender");
            String n3= request.getParameter("number");
            String n4= request.getParameter("add");
            String n5= request.getParameter("date");
            String n6= request.getParameter("email");
            String n7= request.getParameter("spass");
           try{
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con =DriverManager.getConnection("jdbc:derby://localhost:1527/gaikwad", "shweta", "shweta");
           PreparedStatement pst= con.prepareStatement("insert into REGISTER values(?,?,?,?,?,?,?)");
           pst.setString(1,n1);
           pst.setString(2,n2);
           pst.setString(3,n3);
           pst.setString(4,n4);
           pst.setString(5,n5);
           pst.setString(6,n6);
           pst.setString(7,n7);
      int i =pst.executeUpdate();
           if(i>0){
               out.println("inserted successfull"); 
           }else{
               out.println("insertion Failed");
           }
         } 
      catch(Exception e)
                   {
e.printStackTrace();
                   }
        %>
       <jsp:forward page="login.html"/>
        
    </body>
</html>
