
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
        <script type="text/javascript">

            function myPopup2() {
                // var enrl=document.frm.enroll.value;;

                window.open( "http://localhost:8080/Eclass/admin/ImgDsp?enroll='"+enrl+"'", "myWindow",
                "status = 0, height = 300, width = 340, resizable = 1, scrollbars=1, location=no" )
            }
        </script>

        <style type="text/css">
            <!--
            .style1 {
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-size: medium;
                font-weight: bold;
                color: #0066FF;
            }
            -->
        </style>
    </head>
    <body id="page1">
        <div align="center"><span class="style1">Approved Student List</span>    </div>
        <br>
        <table width="100%" border="1px" cellspacing="0" cellpadding="0">
            <tr style="background-color:#FFFF99">
                <th  scope="col">Enrol No </th>
                <th  scope="col">Enrol Date </th>
                <th  scope="col">Name</th>
                <th scope="col">F_Name</th>
                <th  scope="col">DOB</th>
                <th  scope="col">Class</th>
                <th  scope="col">College</th>
                <th  scope="col">City</th>
                <th  scope="col">Country</th>
                <th  scope="col">Mob</th>
                <th  scope="col">Course</th>
                <th  scope="col">Photo</th>
                <th  scope="col">Action</th>
            </tr>
            <%
                        try {
                            DbConnection db = new DbConnection();
                            db.rst = db.stmt.executeQuery("SELECT stu_mstr.enrol_no, stu_mstr.enrol_date, stu_mstr.sname, stu_mstr.f_name , stu_mstr.d_o_b, stu_mstr.clas, stu_mstr.College , stu_mstr.city, stu_mstr.country, stu_mstr.mob , stu_mstr.course FROM eclass.stu_login  INNER JOIN eclass.stu_mstr  ON (stu_login.enrol_no = stu_mstr.enrol_no) WHERE (stu_login.approval =1);");
                            while (db.rst.next()) {
            %>

            <tr>
                <td style="background-color:#FFFF99" align="center"><%=db.rst.getString(1)%></td></td>
                <td align="center"><%=db.rst.getString(2)%></td>
                <td align="center"><%=db.rst.getString(3)%></td>
                <td align="center"><%=db.rst.getString(4)%></td>
                <td align="center"><%=db.rst.getString(5)%></td>
                <td align="center"><%=db.rst.getString(6)%></td>
                <td align="center"><%=db.rst.getString(7)%></td>
                <td align="center"><%=db.rst.getString(8)%></td>
                <td align="center"><%=db.rst.getString(9)%></td>
                <td align="center"><%=db.rst.getString(10)%></td>
                <td align="center"><%=db.rst.getString(11)%></td>
                <td align="center"><a href="adminStuImg.jsp?enroll=<%=db.rst.getString(1)%>"> Click</a></td>
            <form action="ApprovStuListServlt" method="post" name="frm">
                <input type="hidden" value="<%=db.rst.getString(1)%>" name="enroll">
                <input type="hidden" value="Dissp" name="type">
                <td align="center"><input type="submit" value="Dissapprove !"></td>

            </form>
            <form action="" method="post" name="frm">
                <input type="hidden" value="<%=db.rst.getString(1)%>" name="enroll">
                <td align="center"><input type="submit" value="Schedule Test !"></td>
            </form>
        </tr>

        <%                                                                }
                    } catch (Exception e) {

                        System.out.println(e);
                    }
        %>
    </table>




</body>
</html>


