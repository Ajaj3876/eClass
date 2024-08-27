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

            String tid = null;
            String name = null;
            try {

                tid = (String) session.getAttribute("tid");
                name = (String) session.getAttribute("name");
                // System.out.println(enroll);
                if (tid != null) {
                    //System.out.println("if  " + enroll);

                    session.setAttribute("tid", tid);
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
    <body id="page1">
        <div class="wrap">
            <!-- header -->
            <header>
                <div class="container">
                    <h1><a href="index.html">Student's site</a></h1>
                    <nav>
                        <ul>
                            <li class="current"><a href="index.html" class="m1">Home Page</a></li>
                            <li><a href="about-us.html" class="m2">About Us</a></li>
                            <li><a href="articles.html" class="m3">Our Articles</a></li>
                            <li><a href="contact-us.html" class="m4">Contact Us</a></li>
                            <li class="last"><a href="sitemap.html" class="m5">Site Map</a></li>
                        </ul>
                    </nav>
                    <form action="" id="search-form">
                        <fieldset>
                            <div class="rowElem">
                                <input name="text" type="text">
                                <a href="#" onClick="document.getElementById('search-form').submit()">Search</a></div>
                        </fieldset>
                    </form>
                </div>
            </header>
            <div class="container">
                <!-- aside -->
                <aside>
                    <h3>Categories</h3>
                    <ul class="categories">

                        <li><span><a href="techrProfile.jsp" >View Profile</a></span></li>
                        <li><span><a href="teahcrUploadTest.jsp">Upload Test</a></span></li>
                        <li><span><a href="adminUpdateTeacher.jsp"></a></span></li>
                        <li><span><a href="adminDeletTeacher.jsp"></a></span></li>

                        <li><span><a href="#" onclick="myPopup3()"></a></span></li>
                        <li><span><a href="adminAddCourse.jsp"></a></span></li>
                        <li><span><a href="adminUpdateCourse.jsp"></a></span></li>
                        <li><span><a href="adminDeletCourse.jsp"></a></span></li>
                        <li><span><a href="#"></a></span></li>
                        <li><span><a href="TeacherLogOut">Log Out </a></span></li>
                        <li><span>&nbsp;</span></li>
                        <li class="last"><span><a href="#"></a></span></li>
                    </ul>

                    <h2><span></span></h2>
                    <ul class="news">
                        <li>
                            <h4><a href="#" onclick="myPopup4()"></a></h4>
                        </li>
                        <li>
                            <h4><a href="#" onclick="myPopup5()"></a></h4>
                        </li>
                        <li>
                            <h4><a href="#"></a></h4>
                        </li>
                    </ul>
                </aside>
                <!-- content -->
                <section id="content">
                    <div id="banner">
                        <h2>Professional <span>Online Education<span>Since 1992</span></span></h2>
                    </div><div class="ic">More Website Templates at </div>
                    <div class="inside">	
                        <p>
                        <h2 class="style2" style="float:left;margin-right:0px;">Welcome ! <%=name%>



                        </h2>
                        </p>



                    </div>

                    <div class="clear">
                    </div>
                    <div align="center">
                        <hr size="1" width="50%" />
                        <br>
                        <%
                                    DbConnection dbcn = null;
                                    String crs = null;
                                    try {
                                        crs = request.getParameter("course");
                                        dbcn = new DbConnection();
                                        if (crs == null) {
                        %>

                        <form action="#" method="post">
                            <select name="course">
                                <option style="color:#666666">Select Course</option>
                                <%
                                                                            try {

                                                                                dbcn.rst = dbcn.stmt.executeQuery("select c_code from course_mstr");
                                                                                while (dbcn.rst.next()) {
                                %>
                                <option><%=dbcn.rst.getString(1)%></option>
                                <%
                                                                                }
                                                                            } catch (Exception e) {
                                                                                System.out.println(e);
                                                                            }
                                %>
                            </select><input type="submit" value="Submit" />
                        </form>
                        <%  } else {
                                                                    try {
                                                                        //  dbcn.rst=dbcn.stmt.executeQuery("SELECT MAX(sno) FROM    c; ");
                                                                        //  dbcn.rst.next();
                                                                        //  if(dbcn.rst.getInt(1)>10){
                                                                        //  out.println("You can not submit more than 50 Question ")  ;
                                                                        //  }else{
                                                                        String ccode = request.getParameter("course");
                                                                        String quest = request.getParameter("quest");
                                                                        String opt1 = request.getParameter("opt1");
                                                                        String opt2 = request.getParameter("opt2");
                                                                        String opt3 = request.getParameter("opt3");
                                                                        String opt4 = request.getParameter("opt4");
                                                                        String copt = request.getParameter("copt");
                                                                        dbcn.pstmt = dbcn.con.prepareStatement("INSERT INTO questset(ccode,quest, opt1,opt2,opt3,opt4,right_ans) VALUES (?,?,?,?,?,?,?);");
                                                                        dbcn.pstmt.setString(1, ccode);
                                                                        dbcn.pstmt.setString(2, quest);
                                                                        dbcn.pstmt.setString(3, opt1);
                                                                        dbcn.pstmt.setString(4, opt2);
                                                                        dbcn.pstmt.setString(5, opt3);
                                                                        dbcn.pstmt.setString(6, opt4);
                                                                        dbcn.pstmt.setString(7, copt);
                                                                       int j= dbcn.pstmt.executeUpdate();
                                                                        if(j>0)
                                                                            {
                                                                            out.println("Submitted !");
                                                                            }


                                                                        //  }
                                                                    } catch (Exception e) {
                                                                        System.out.println(e);
                                                                    }


                        %>
                        <form method="post" action="" >
                            <input type="hidden" name="course" value="<%=crs%>" />
                            <table width="600">
                                <tr>
                                    <td>
                                        Enter Question
                                    </td>
                                    <td>
                                        <input type="text" name="quest" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Option1
                                    </td>
                                    <td>
                                        <input type="text" name="opt1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Option2
                                    </td>
                                    <td>
                                        <input type="text" name="opt2" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Option3
                                    </td>
                                    <td>
                                        <input type="text" name="opt3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Option4
                                    </td>
                                    <td>
                                        <input type="text" name="opt4" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Correct  Option
                                    </td>
                                    <td>
                                        <input type="text" name="copt" /><span style="font-size: 10px">For Example : Option1</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <input type="Submit" value="Submit" />
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <%  }

                                    } catch (Exception e) {
                                    }
                        %>



                        <br />
                        <hr size="1" width="50%" />
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
    <footer>
        <div class="container">
            <div class="inside">
                <div class="wrapper">
                    <div class="fleft">24/7 Customer Service <span>8.800.146.56.7</span></div>
                    <div class="aligncenter"><a rel="nofollow" href="" class="new_window">Website template</a> designed by chandan.tripathi41@gmail.com<br>
                        <a href="http://www.templates.com/product/3d-models/" class="new_window">3D Models</a> provided by chandan.tripathi41@gmail.com</div>
                </div>
            </div>
        </div>
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
</body>
</html>

