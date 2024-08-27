<%-- 
    Document   : adminStuImg
    Created on : Mar 23, 2013, 6:24:04 PM
    Author     : chandan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

                String name = null;
                try {

                    name = (String) session.getAttribute("name");
                    // System.out.println(enroll);
                    if (name != null) {
                        //System.out.println("if  " + enroll);

                        session.setAttribute("name", name);
                    } else {
                        // System.out.println("else  " + enroll);
                        response.sendRedirect("UserLogin.jsp?error=Please Login");
                    }
                } catch (Exception e) {
                    System.out.println(e);

                }

    %>
    <body
        <%
                    String enroll = null;
                    try {
                        enroll = request.getParameter("enroll");

                        System.out.println(enroll);
                    } catch (Exception e) {
                        System.out.println(e);
                    }
        %>
        <img alt="" src="ImgDisp?enroll=<%=enroll%> " hspace="0px" vspace="0px" width="129" height="130" style="margin-left: 10px;margin-bottom: 5px;float: left; border:thin;background-color:#FF0000" />
    </body>
</html>
