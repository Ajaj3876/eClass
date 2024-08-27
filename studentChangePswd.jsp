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
            .style13 {color: #008CC4}
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
                        <li><span><a href="studentProfile.jsp">Profile</a></span></li>
                        <li><span><a href="studentUpdateProfile.jsp">Update Profile  </a></span></li>
                        <li><span><a href="studentChangePswd.jsp">Change Password </a></span></li>
                          <%
                                try{
                                    DbConnection dbCon= new DbConnection();
                                    dbCon.rst=dbCon.stmt.executeQuery("SELECT    course_mstr.path FROM    eclass.stu_mstr    , eclass.course_mstr WHERE (stu_mstr.enrol_no='"+enroll+"'    AND course_mstr.c_code =stu_mstr.course);");
                                    if(dbCon.rst.next()){
                                        %>
                                        <span style="color:#cccc00;font-size: 14px;"><br><br>
                                            <li><span><a href="<%=dbCon.rst.getString(1)%>" target="_blank">Download Course </a></span></li>
                                        </span>
                                       <% }

                                    }catch(Exception e){
                                        System.out.println(e);
                                        }
                                %>
                        <li><span><a href="StuApplyTest">Apply For Test </a></span></li>
                        <li><span><a href="StuLogOut">Log Out</a> </span></li>
                        <li><span><a href="#"></a></span></li>
                        <li class="last"><span><a href="#"></a></span></li>
                    </ul>

                    <h2>Fresh <span>News</span></h2>
                    <ul class="news">
                        <li><strong>June 30, 2010</strong>
                            <h4><a href="#">Sed ut perspiciatis unde</a></h4>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque. </li>
                        <li><strong>June 14, 2010</strong>
                            <h4><a href="#">Neque porro quisquam est</a></h4>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit consequuntur magni. </li>
                        <li><strong>May 29, 2010</strong>
                            <h4><a href="#">Minima veniam, quis nostrum</a></h4>
                            Uis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae. </li>
                    </ul>
                </aside>
                <!-- content -->
                <section id="content">
                    <div id="banner">
                        <h2>Professional <span>Online Education<span>Since 1992</span></span></h2>
                    </div><div class="ic">More Website Templates at TemplateMonster.com!</div>
                    <div class="inside">
                        <p>
                        <h2 class="style2" style="float:left;margin-right:0px;">Welcome ! <%=sname%>



                        </h2>
                        </p>



                    </div>

                    <div class="clear">
                    </div>
                    <div align="center">
                        <hr size="1" width="50%" />
                        <br />

                        <%
                                    String hq = null;
                                    try {
                                        DbConnection db = new DbConnection();
                                        db.rst = db.stmt.executeQuery("select hint_question from stu_login where enrol_no='" + enroll + "' ");
                                        if (db.rst.next()) {

                                            hq = db.rst.getString(1);
                                        }
                                    } catch (Exception e) {
                                        System.out.println(e);
                                    }
                        %>
                        <form method="post"  action="StuChngPswd" >
                            <table width="400" border="1" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th colspan="2" scope="col">Update Password </th>
                                </tr>
                                <tr>
                                    <th scope="row"><%=hq%><span style="font-size: 9px;">
                                        [Hint Question]
                                        </span></th>
                                    <td><input name="hans" type="text" class="rowElem"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Current Password</th>
                                    <td><input name="cpswd" type="password" class="rowElem"></td>
                                </tr>
                                <tr>
                                    <th scope="row">New Password</th>
                                    <td><input name="npswd" type="password" class="rowElem"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Retype  New Password</th>
                                    <td><input name="rnpswd" type="password" class="rowElem"></td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row">&nbsp;</th>
                                    <td><input type="submit" class="rowElem"></td>
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

