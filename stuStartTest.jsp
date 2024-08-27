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
<html lang="en"><head>
        <script type="text/javascript">
            function validate()
            {
                if(document.frm.user.value=="")
                {
                    alert("Please enter User");
                    document.frm.user.focus();
                    return false;
                }
                if(document.frm.pswd.value=="")
                {
                    alert("Please enter Password");
                    document.frm.pswd.focus();
                    return false;
                }
                return true;
            }

        </script>

        <title>Home - Home Page | Student's Site - Free Website Template from Templates.com</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/validateLoginid.js"></script>
        <!--[if lt IE 7]>
             <link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
             <script type="text/javascript" src="js/ie_png.js"></script>
             <script type="text/javascript">
                ie_png.fix('.png, footer, header nav ul li a, .nav-bg, .list li img');
             </script>
        <![endif]-->
        <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
          <![endif]-->
        <style type="text/css">
            <!--
            .style2 {color: #008cc4}
            .style7 {
                color: #CC3300;
                font-size: 10px;
            }
            .style8 {color: #FF0000}
            .style10 {color: #666633}
            -->
        </style>
    </head>
    <body>

        <%
                    int limit = 10;
                    String[] quest = new String[limit];
                    String[] optn1 = new String[limit];
                    String[] optn2 = new String[limit];
                    String[] optn3 = new String[limit];
                    String[] optn4 = new String[limit];
                    String[] rans = new String[limit];

                    try {
                        //String course = request.getParameter("course").trim();
                        DbConnection db = new DbConnection();
                        //db.rst = db.stmt.executeQuery("SELECT  quest, opt1, opt2, opt3, opt4, right_ans FROM questset where ccode='" + course + "'");
                        db.rst = db.stmt.executeQuery("SELECT  quest, opt1, opt2, opt3, opt4, right_ans FROM questset where ccode='c'");
                        int i = 0;
                        while (db.rst.next()) {
                            if (i == limit) {
                                break;
                            }
                            quest[i] = db.rst.getString(1);
                            optn1[i] = db.rst.getString(2);
                            optn2[i] = db.rst.getString(3);
                            optn3[i] = db.rst.getString(4);
                            optn4[i] = db.rst.getString(5);
                            rans[i] = db.rst.getString(6);
                            i++;
                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
        %>


        <form action="StuSubmitAnswr" method="post">
            <div align="center">
                <table border="1" cellpadding="2" cellspacing="2" style="background-color: #cccccc;border: 1px;" width="600" >
                    <%
                                String optn = null;
                                String rns=null;
                                for (int cntr = 0; cntr < limit; cntr++) {
                                    optn = "op" + String.valueOf(cntr);
                                    rns="rans"+String.valueOf(cntr);
                    %>

                    <tr style="background-color: #cccc00">
                        <td colspan="2">
                            <b>Question  <%=cntr + 1%> : &nbsp;</b><%=quest[cntr]%>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <b> (a)&nbsp; </b><input type="radio" name="<%=optn%>" value="Option1" /><%=optn1[cntr]%>
                        </td>
                        <td>
                            <b> (b)&nbsp; </b> <input type="radio" name="<%=optn%>" value="Option2" /><%=optn2[cntr]%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b> (c)&nbsp; </b> <input type="radio" name="<%=optn%>" value="Option3" /><%=optn3[cntr]%>
                        </td>
                        <td>
                            <b> (d)&nbsp; </b><input type="radio" name="<%=optn%>" value="Option4" /><%=optn4[cntr]%>
                            <input type="hidden" name="<%=rns%>" value="<%=rans[cntr]%>" />
                        </td>

                    </tr>
                    <%

                                }
                    %>
                    <tr>
                        <td></td>
                        <td align="right"><input type="submit" value="Submit" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                </table>
            </div>







        </form>


    </body>
</html>

