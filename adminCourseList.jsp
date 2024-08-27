<%--
    Document   : index
    Created on : Mar 18, 2013, 11:45:56 PM
    Author     : chandan
--%>

<%@page import="DB.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
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
<html lang="en"><head>
        
      <title>
	  Teacher List
	  </title>
	  
       
    </head>
    <body id="page1">
   
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr style="background-color:#FFFF99">
                                <th width="14%"  scope="col">Course Code </th>
                                <th width="24%"  scope="col">Name</th>
                                <th width="6%"  scope="col">Duration</th>
                                <th width="29%" scope="col">Description</th>
                                <th width="9%"  scope="col">Fee</th>
                                <th width="18%"  scope="col">Uploaded File Path </th>
                                

                            </tr>
                            <%
                                        try {
                                            DbConnection db = new DbConnection();
                                            db.rst = db.stmt.executeQuery("Select * from course_mstr");
                                            while (db.rst.next()) {
                            %>
                            <tr>
                                <td style="background-color:#FFFF99" align="center"><%=db.rst.getString(1)%></td>
                                <td align="center"><%=db.rst.getString(2)%></td>
                                <td align="center"><%=db.rst.getString(3)%></td>
                                <td align="center"><%=db.rst.getString(4)%></td>
                                <td align="center"><%=db.rst.getString(5)%></td>
                                <td align="center"><%=db.rst.getString(6)%></td>
                                
                            </tr>

                            <%                                                                }
                                        } catch (Exception e) {

                                            System.out.println(e);
                                        }
                            %>

                        </table>

       
      
           
</body>
</html>

