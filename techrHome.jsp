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
            String name=null;
            try {
               
                tid = (String) session.getAttribute("tid");
                name=(String) session.getAttribute("name");
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

                        <h2><span class="style8"><br>
                                <%
                                            String msg = null;
                                            String err = null;
                                            try {
                                                msg = request.getParameter("msg");
                                                System.out.println(msg);
                                                if (msg != null) {

                                                    if (msg.trim().equals("1")) {
                                %>
                                <span style="color: #339900">
                                    Successfully Updated !
                                </span>
                                <%                                                                                                                }
                                                                                    if (msg.trim().equals("0")) {
                                %>
                                <span style="color: #FF0000">
                                    Failed !
                                </span>
                                <%                                                                                                                }
                                                                                } else {
                                %>
                                Hey !</span> <span class="style10">   How are you doing ?</span>
                                <%                                                                        }
                                            } catch (Exception e) {
                                            }
                                %>


                        </h2>

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

