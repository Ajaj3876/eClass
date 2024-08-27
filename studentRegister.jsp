<%-- 
    Document   : index
    Created on : Mar 18, 2013, 11:45:56 PM
    Author     : chandan
--%>

<%@page import="DB.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <script type="text/javascript">
            function validate()
            {
                if(document.frm.sname.value=="")
                {
                    alert("Please enter Name");
                    document.frm.sname.focus();
                    return false;
                }
                if(document.frm.sfname.value=="")
                {
                    alert("Please enter Your Father Name");
                    document.frm.sfname.focus();
                    return false;
                }
                if(document.frm.dob.value=="")
                {
                    alert("Please enter Date of Birth");
                    document.frm.dob.focus();
                    return false;
                }
                if(document.frm.clas.value=="")
                {
                    alert("Please enter Class");
                    document.frm.clas.focus();
                    return false;
                }
                if(document.frm.college.value=="")
                {
                    alert("Please enter college");
                    document.frm.college.focus();
                    return false;
                }
                if(document.frm.city.value=="")
                {
                    alert("Please enter city");
                    document.frm.city.focus();
                    return false;
                }
                if(document.frm.state.value=="")
                {
                    alert("Please enter state");
                    document.frm.state.focus();
                    return false;
                }
                if(document.frm.country.value=="")
                {
                    alert("Please enter country");
                    document.frm.country.focus();
                    return false;
                }
                if(document.frm.mob.value=="")
                {
                    alert("Please enter mob");
                    document.frm.mob.focus();
                    return false;
                }
                if(document.frm.course.selectedIndex==0)
                {
                    alert("Please Select  course");
                    document.frm.course.focus();
                    return false;
                }
                if(document.frm.photo.value=="")
                {
                    alert("Please upload photo");
                    document.frm.photo.focus();
                    return false;
                }
                if (echeck(document.frm.email.value)==false){
                    document.frm.email.value="";
                    document.frm.email.focus();
                    return false
                }

                if(document.frm.usrlogin.value=="")
                {
                    alert("Please enter User login");
                    document.frm.usrlogin.focus();
                    return false;
                }
                if(document.frm.pswd.value=="")
                {
                    alert("Please enter Password");
                    document.frm.pswd.focus();
                    return false;
                }
                if(document.frm.rpswd.value=="")
                {
                    alert("Please Retype Password");
                    document.frm.rpswd.focus();
                    return false;
                }
                if(document.frm.rpswd.value!=document.frm.pswd.value)
                {
                    alert("Password do not match");
                    document.frm.pswd.value="";
                    document.frm.rpswd.value="";
                    document.frm.pswd.focus();
                    return false;
                }
                if(document.frm.hquest.value=="")
                {
                    alert("Please enter Hint Question");
                    document.frm.hquest.focus();
                    return false;
                }
                if(document.frm.hanswr.value=="")
                {
                    alert("Please enter Hint Answer");
                    document.frm.hanswr.focus();
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
		<script type="text/javascript" src="js/clndr/scw.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
		<script type="text/javascript" src="js/validateuserid.js"></script>
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
            .style8 {color: #FF3300}
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
                                <input type="text">
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
                        <li><span><a href="#">Home</a></span></li>
                        <li><span><a href="#">About Us </a></span></li>
                        <li><span><a href="#">Registration</a></span></li>
                        <li><span><a href="#">Contact Us </a></span></li>
                        <li><span><a href="#">FeedBack</a></span></li>
                        <li><span><a href="#">Our Articles </a></span></li>
                        <li><span><a href="#">Career</a></span></li>
                        <li class="last"><span><a href="#">Calendar</a></span></li>
                    </ul>
                    <form action="" id="newsletter-form">
                        <fieldset>
                            <div class="rowElem">
                                <center>
                                    <h2><a href="#" class="fleft" ></a></h2>
                                    <div class="clear">
                                        <h2><a href="#" class="style1" >Login Here </a></h2>
                                    </div>
                                </center>
                            </div>
                        </fieldset>
                    </form>
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
                        <h2 class="style2" style="float:left;margin-right:0px;">Student registration  </h2>
                        </p>



                    </div>

                    <div class="clear">
                    </div>
                    <div align="center">
                        <hr size="1" width="50%" />
                        <br />
                        <form action="StuRegistr" method="post" enctype="multipart/form-data" name="frm" onSubmit="return validate();">
                            <table width="368" border="1" cellspacing="0" cellpadding="0" align="center" class="rowElem">
                                <tr>
                                    <td><span class="txt1"> Name</span></td>
                                    <td> <input type="text" name="sname"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Father Name</span></td>
                                    <td><input name="sfname" type="text"></td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Date of Birth </span></td>
                                    <td> <input name="dob" type="text" id="dob" onclick="scwShow(this,event);" onfocus="scwShow(this,event);" > </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Class</span></td>
                                    <td><input name="clas" type="text" id="clas"></td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">College </span></td>
                                    <td> <input name="college" type="text" id="college"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">City</span></td>
                                    <td><input name="city" type="text" id="city"></td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">State </span></td>
                                    <td> <input name="state" type="text" id="state"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Country</span></td>
                                    <td><input name="country" type="text" id="country"></td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Mobile</span></td>
                                    <td> <input name="mob" type="text" id="mob"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Course</span></td>
                                    <td><select name="course">
                                            <option style="color:#666666">Select Course</option>
									<%
                                                                        try{
									DbConnection dbcn= new DbConnection();
                                                                        dbcn.rst=dbcn.stmt.executeQuery("select c_code from course_mstr");
                                                                        while(dbcn.rst.next()){
                                                                            %>
                                                                            <option><%=dbcn.rst.getString(1)%></option>
                                                                            <%
                                                                        }
                                                                        }catch(Exception e){
                                                                            System.out.println(e);
                                                                            }
									%>
									</select>
									</td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Photo </span></td>
                                    <td> <input type="file" name="photo"> </td>
                                </tr>

                                <tr>
                                    <td><span class="txt1">E-mail </span></td>
                                    <td> <input name="email" type="text" id="email"> </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="border-bottom:1px;">
                                    <td style="border-bottom:1px;"> <span class="txt1 style8">Login Details</span></td>
                                    <td style="border-bottom:1px;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">User Login</span></td>
                                    <td><input name="usrlogin" type="text" id="usrlogin" onblur="validateUId()">
                                        <span id="msgArea">

                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Password</span></td>
                                    <td> <input name="pswd" type="password" id="pswd"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Retype Password</span></td>
                                    <td><input name="rpswd" type="password" id="rpswd"></td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Hint Question </span></td>
                                    <td> <input name="hquest" type="text" id="hquest"> </td>
                                </tr>
                                <tr>
                                    <td><span class="txt1">Hint Answer </span></td>
                                    <td><input name="hanswr" type="text" id="hanswr"></td>
                                </tr>
                                <tr>
                                    <td width="100%" colspan="2">&nbsp;

                                    </td>
                                </tr>

                                <tr>
                                    <td>&nbsp; </td>
                                    <td align="right"><input name="submit" type="submit" id="submit" value="Register" /></td>
                                </tr>

                            </table>
                      </form>
                        <br />
                        <hr size="1" width="50%" />
                        &nbsp;**&nbsp;All Ready  Registered <a href="">Click Here</a>		</div>
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

