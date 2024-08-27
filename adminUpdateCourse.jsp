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
        <script type="text/javascript">
 function myPopup2() {
                window.open( "./AdminTeacherList.jsp", "myWindow",
                "status = 0, height = 300, width = 340, resizable = 1, scrollbars=1, location=no" )
            }
 function myPopup3() {
                window.open( "./adminCourseList.jsp", "myWindow",
                "status = 0, height = 300, width = 340, resizable = 1, scrollbars=1, location=no" )
            }
			function myPopup4() {
                window.open( "./adminApprvdStuList.jsp", "myWindow",
                "status = 0, height = 300, width = 340, resizable = 1, scrollbars=1, location=no" )
            }
			function myPopup5() {
                window.open( "./adminNtApprvdStuList.jsp", "myWindow",
                "status = 0, height = 300, width = 340, resizable = 1, scrollbars=1, location=no" )
            }
        </script>
        <script type="text/javascript">
            function tcherfrmvalidate()
            {
                if(document.frm.tname.value=="")
                {
                    alert("Please enter Name");
                    document.frm.tname.focus();
                    return false;
                }
                if(document.frm.d_o_j.value=="")
                {
                    alert("Please enter Date of Joining");
                    document.frm.d_o_j.focus();
                    return false;
                }
                if(document.frm.address.value=="")
                {
                    alert("Please enter Address");
                    document.frm.address.focus();
                    return false;
                }
                if(document.frm.qualifctn.value=="")
                {
                    alert("Please enter Qualification");
                    document.frm.qualifctn.focus();
                    return false;
                }
                if(document.frm.university.value=="")
                {
                    alert("Please enter University");
                    document.frm.university.focus();
                    return false;
                }
                if(document.frm.course.value=="")
                {
                    alert("Please enter Course");
                    document.frm.course.focus();
                    return false;
                }
                if(document.frm.mob.value=="")
                {
                    alert("Please enter Password");
                    document.frm.mob.focus();
                    return false;
                }
                if (echeck(document.frm.email.value)==false){
                    document.frm.email.value="";
                    document.frm.email.focus();
                    return false;
                }
                if(document.frm.usrlogin.value=="")
                {
                    alert("Please enter User Login");
                    document.frm.usrlogin.focus();
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
            function echeck(str) {

                var at="@"
                var dot="."
                var lat=str.indexOf(at)
                var lstr=str.length
                var ldot=str.indexOf(dot)

                if (str.indexOf(at)==-1){
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){

                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(at,(lat+1))!=-1){
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(dot,(lat+2))==-1){
                    alert("Invalid E-mail ID")
                    return false
                }

                if (str.indexOf(" ")!=-1){
                    alert("Invalid E-mail ID")
                    return false
                }

                return true
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
        <script type="text/javascript" src="js/clndr/scw.js"></script>
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
            .style11 {color: #CC0066}
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

                        <li><span><a href="#" onclick="myPopup2()">Teacher List </a></span></li>
                        <li><span><a href="adminAddTeacher.jsp">Add Teacher </a></span></li>
                        <li><span><a href="adminUpdateTeacher.jsp">Update Teacher </a></span></li>
                        <li><span><a href="adminDeletTeacher.jsp">Delete Teacher </a></span></li>

                        <li><span><a href="#" onclick="myPopup3()">Course List  </a></span></li>
                        <li><span><a href="adminAddCourse.jsp">Add Course </a></span></li>
                        <li><span><a href="adminUpdateCourse.jsp">Update Course </a></span></li>
                        <li><span><a href="adminDeletCourse.jsp">Delete Course </a></span></li>
                        <li><span><a href="#"></a></span></li>
                        <li><span><a href="AdminLogOut">Log Out </a></span></li>
                        <li><span>&nbsp;</span></li>
                        <li class="last"><span><a href="#"></a></span></li>
                    </ul>

                    <h2>Student Zone <span></span></h2>
                    <ul class="news">
                        <li>
                            <h4><a href="#" onclick="myPopup4()">Approved Student List </a></h4>
                        </li>
						<li>
                            <h4><a href="#" onclick="myPopup5()">Not Approved Student List </a></h4>
                        </li>
                        <li>
                            <h4><a href="#">Schedule Test </a></h4>
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
                        <form action="#" method="post">
                            <table width="600" border="1" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>Enter Course Code </td>
                                    <td><input name="ccode" type="text" id="ccode"></td>
                                    <td><input name="" type="submit" value="Show"></td>
                                </tr>

                            </table>

                        </form>

                        <%
                                    try {
                                        String ccode = request.getParameter("ccode");
                                        if (ccode != null) {
                                            DbConnection db = new DbConnection();
                                            db.rst = db.stmt.executeQuery("SELECT  c_name,c_duration,description,Fee, path FROM course_mstr where c_code='"+ccode+"'");
                                            if (db.rst.next()) {
                        %>
                        <form method="post" action="AdminUpdtCursServlet">
                            <table width="600" border="1" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th colspan="2" scope="col"><span class="style11">Update Course </span></th>
                                </tr>
                                <tr>
                                    <th scope="row"><input name="ccode" type="hidden" value="<%=ccode%>"></th>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row">Name</th>
                                    <td><input name="cname" type="text" value="<%=db.rst.getString(1)%>"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Duration</th>
                                    <td><input name="duration" type="text" id="duration"  value="<%=db.rst.getString(2)%>"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Description</th>
                                    <td><input name="description" type="text" id="description" value="<%=db.rst.getString(3)%>"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Fee</th>
                                    <td><input name="fee" type="text" id="fee" value="<%=db.rst.getString(4)%>"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Uploaded File Path </th>
                                    <td><input name="path" type="text" id="path" value="<%=db.rst.getString(5)%>"></td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td><input type="submit" value="Update" /></td>
                                </tr>
                            </table>
                        </form>
                        <%                                                                    } else {
                                                %>
                                                <span style="color:#FF0000">Invalid ID</span>
                                                <%
                                            }
                                        }
                                    } catch (Exception e) {
                                        System.out.println(e);
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

