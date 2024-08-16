<%-- 
    Document   : settings
    Created on : 27 Jan, 2021, 10:23:11 AM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
        String mode = request.getParameter("mode");
        Connection con = SQLconnection.getconnection();
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into admin_settings values('0','" + mode + "')");
        if (i != 0) {
            response.sendRedirect("admin_settings.jsp?stored='yes'");
        }
    }
    catch(Exception e ){
            System.out.println(e);
    }
%>
