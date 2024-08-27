<%-- 
    Document   : stuReport
    Created on : Mar 25, 2013, 4:05:11 PM
    Author     : chandan
--%>

<%@page import="DB.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
            String enroll = null;
            String sname = null;
            try {
                enroll = (String) session.getAttribute("enroll");
                sname = (String) session.getAttribute("sname");
                // System.out.println(enroll);
                if (enroll != null || sname != null) {
                    //System.out.println("if  " + enroll);
                    session.setAttribute("enroll", enroll);
                    session.setAttribute("sname", sname);
                } else {
                    // System.out.println("else  " + enroll);
                    response.sendRedirect("UserLogin.jsp?error=Please Login");
                }
            } catch (Exception e) {
                System.out.println(e);

            }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Card</title>
        <style type="text/css">
            <!--
            .style1 {
                color: #CC3333;
                font-weight: bold;
                font-family: "Courier New", Courier, monospace;
            }
            .style2 {font-family: "Courier New", Courier, monospace}
            .style3 {
                font-family: "Courier New", Courier, monospace;
                font-weight: bold;
                color: #000099;
            }
            .style4 {
                color: #666666;
                font-family: "Courier New", Courier, monospace;
            }
            .style5 {font-family: "Courier New", Courier, monospace; font-weight: bold; }
            -->
        </style>
    </head>
    <body>
        <%
                    try {
                        int marks = 0;
                        double percent=0.0;
                        DbConnection db = new DbConnection();
                        db.rst = db.stmt.executeQuery("SELECT   test.test_date , test.totalquestno ,  stu_mstr.College , stu_mstr.sname, stu_mstr.f_name , stu_mstr.course FROM  eclass.test INNER JOIN eclass.stu_mstr  ON (test.enrol_no = stu_mstr.enrol_no) WHERE (stu_mstr.enrol_no ='" + enroll + "');");
                        if (db.rst.next()) {
                            marks = db.rst.getInt(2) * 2;
                            percent=(marks*100)/20;
        %>
        <table width="600" border="1" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td colspan="3"><div align="center" class="style1">
                        <h1>Student Report Card </h1>
                    </div></td>
            </tr>
            <tr>
                <td colspan="3">
                    <div align="right" class="style5">Exam Date :  <%=db.rst.getString(1)%> </div></td>
            </tr>
            <tr>
                <td><span class="style2">Enrollment No: </span></td>
                <td><span class="style4"><%=enroll%></span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td width="180"><span class="style2">College : </span></td>
                <td width="232"><span class="style4"><%=db.rst.getString(3)%></span></td>
                <td width="180" rowspan="5">
				<img alt="" src="ImgDisp?enroll=<%=enroll%> " hspace="0px" vspace="0px" width="129" height="130" style="margin-left: 10px;margin-bottom: 5px;float: left; border:thin;background-color:#FF0000" />
				</td>
            </tr>
            <tr>
                <td><span class="style2">Student Name : </span></td>
                <td><span class="style4"><%=db.rst.getString(4)%></span></td>
            </tr>
            <tr>
                <td><span class="style2">Father Name : </span></td>
                <td><span class="style4"><%=db.rst.getString(5)%></span></td>
            </tr>
            <tr>
                <td><span class="style2">Course Name : </span></td>
                <td><span class="style4"><%=db.rst.getString(6)%></span></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="style2">Marks : </span></td>
                <td><span class="style4"><%=marks%></span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="style2">Total Marks : </span></td>
                <td><span class="style4">20</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="style2">Percentage : </span></td>
                <td><span class="style4"><%=percent%></span></td>
                <td><div align="center" class="style3">

                        <%
                        if(marks>10){
                            %>
                            Pass !
                            <%
                            }else{
                                %>
                                Fail !
                                <%
                                }
                        %>

                    </div></td>
            </tr>
        </table>


        <% }

                    } catch (Exception e) {
                        System.out.println(e);
                    }

        %>
    </body>
</html>
