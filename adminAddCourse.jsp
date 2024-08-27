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
                if(document.frm.ccode.value=="")
                {
                    alert("Please enter Course Code");
                    document.frm.ccode.focus();
                    return false;
                }
                if(document.frm.cname.value=="")
                {
                    alert("Please enter Course name");
                    document.frm.cname.focus();
                    return false;
                }
                if(document.frm.duration.value=="")
                {
                    alert("Please enter duration");
                    document.frm.duration.focus();
                    return false;
                }
                if(document.frm.descrptn.value=="")
                {
                    alert("Please enter Qualification");
                    document.frm.descrptn.focus();
                    return false;
                }
                if(document.frm.fee.value=="")
                {
                    alert("Please enter fee");
                    document.frm.fee.focus();
                    return false;
                }
                if(document.frm.upld_course.value=="")
                {
                    alert("Please Locate the file");
                    document.frm.upld_course.focus();
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
            .style15 {font-size: 10px}
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
                        <%
                                    int j = 0;
                                    DbConnection db = null;
                                    try {
                                        String ccode = request.getParameter("ccode");
                                        String cname = request.getParameter("cname");
                                        String duration = request.getParameter("duration");
                                        String descrptn = request.getParameter("descrptn");
                                        String fee = request.getParameter("fee");
                                        String path = request.getParameter("path");
                                        if (ccode != null) {
                                            db = new DbConnection();
                                            db.pstmt = db.con.prepareStatement("INSERT INTO course_mstr(c_code,c_name,c_duration,description,Fee, path) VALUES (?,?,?,?,?,?);");
                                            db.pstmt.setString(1, ccode);
                                            db.pstmt.setString(2, cname);
                                            db.pstmt.setString(3, duration);
                                            db.pstmt.setString(4, descrptn);
                                            db.pstmt.setString(5, fee);
                                            db.pstmt.setString(6, path);
                                            j = db.pstmt.executeUpdate();
                                           if (j > 0) {
                                              //  String tblName = null;
                                              //  db.rst = db.stmt.executeQuery("SELECT c_code FROM   course_mstr WHERE c_name ='" + cname + "';");
                                              //  if (db.rst.next()) {
                                                //    tblName = db.rst.getString(1);
                                                //    System.out.println("tblName--------------" + tblName);
                                               // }
                                               // if (tblName != null) {
                                                    // String sql="CREATE TABLE "+tblName+"(sno int(2) NOT NULL AUTO_INCREMENT, quest VARCHAR(200) , opt1 VARCHAR(20) , opt2 VARCHAR(20) , opt3 VARCHAR(20) , opt4 VARCHAR(20) , right_ans VARCHAR(20),PRIMARY KEY (sno) )";
                                                    //db.stmt.executeUpdate(sql);
                                                 //   db.pstmt = db.con.prepareStatement("CREATE TABLE ?(quest VARCHAR(200) , opt1 VARCHAR(20) , opt2 VARCHAR(20) , opt3 VARCHAR(20) , opt4 VARCHAR(20) , right_ans VARCHAR(20) )");
                                                  //  db.pstmt.setString(1, tblName.toString());
                                                  //  db.pstmt.executeUpdate();
                                               // }

                        %>
                        <span style="color: #66CC33;font-size: 12px"><strong>Added Successfully !</strong></span>
                        <%    } else {
                        %>
                        <span style="color:#ff0000;font-size: 12px;"><strong>Failed !</strong></span>
                        <%                        }



                                        
}
                                    }catch (Exception e) {
                                        e.printStackTrace();
                                        System.out.println(e);
                                    }
                        %>

                        <form action="#" method="post" name="frm" onSubmit="tcherfrmvalidate();">
                            <table width="600" border="1" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th colspan="2" scope="col"><span class="style11">Add Course </span></th>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row">Course Code </th>
                                    <td><input name="ccode" type="text" id="ccode"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Name</th>
                                    <td><input name="cname" type="text" id="cname" ></td>
                                </tr>
                                <tr>
                                    <th scope="row">Duration(<span class="style15">In Month</span>)</th>
                                    <td><input name="duration" type="text" id="duration"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Description</th>
                                    <td><label>
                                            <textarea name="descrptn" cols="30" rows="5" id="descrptn"></textarea>
                                        </label></td>
                                </tr>
                                <tr>
                                    <th scope="row">Fee</th>
                                    <td><input name="fee" type="text" id="fee"></td>
                                </tr>

                                <tr>
                                    <th scope="row">File Path </th>
                                    <td><input name="path" type="text" id="path" value="./Course/">
                                        <span class="style15">(Upload File Under Course Folder) </span></td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td><input name="" type="submit" value="Submit" /></td>
                                </tr>
                            </table>


                        </form>
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

