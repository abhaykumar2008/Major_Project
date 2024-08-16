<%-- 
    Document   : User_login
    Created on : 26 Jan, 2021, 12:40:41 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   


    <!-- Site Metas -->
    <title>Feature Level Rating System</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<%
    if (request.getParameter("Reister_Success") != null) {
%>
<script>alert('Reistered Successfully');</script>
<%            }
%>
<%
    if (request.getParameter("Failed") != null) {
%>
<script>alert('Login Failed');</script>
<%            }
%>
<body class="version">

    <!-- LOADER -->
    <div id="preloader">
        <div class="cube-wrapper">
            <div class="cube-folding">
                <span class="leaf1"></span>
                <span class="leaf2"></span>
                <span class="leaf3"></span>
                <span class="leaf4"></span>
            </div>
            <span class="loading" data-name="Loading">Loading</span>
        </div>
    </div><!-- end loader -->
    <!-- END LOADER -->

    <div id="wrapper">

        <!-- Sidebar-wrapper -->
        <div id="sidebar-wrapper">
            <div class="side-top">
                <div class="logo-sidebar">
                    <h2>Feature Level Rating</h2>
                </div>
                <ul class="sidebar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li><a class="active" href="User_login.jsp">User</a></li>
                    <li><a href="Admin_login.jsp">Admin</a></li>
                </ul>
            </div>
        </div>
        <!-- End Sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <a href="#menu-toggle" class="menuopener" id="menu-toggle"><i class="fa fa-bars"></i></a>

            <div id="home" class="parallax first-section" style="background-image:url('images/mobile.png');">
                <div class="container-fluid">
                    <div class="row">

                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end section -->
            <section class="section nopad cac text-center">
                <a href="index.html"><h3>Feature-Level Rating System Using Customer Reviews and Review Votes</h3></a>
            </section>

            <div class="section wb">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="message-box">
                                <br><br>
                                <h2>User Login</h2>
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <div class="contact_form">
                                            <div id="message"></div>
                                            <form action="user_signin.jsp" method="post">
                                                <fieldset class="row-fluid">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="email" name="email" class="form-control" required="Required" placeholder="Enter Email ID">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="password" name="pass" class="form-control" required="Required" placeholder="Enter Password">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                                        <button type="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block subt">Submit</button>
                                                    </div><br><br><br>
                                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 text-center">
                                                        <a href="user_signup.jsp" class="btn btn-link btn-lg">Register!</a>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div><!-- end col -->
                                </div>
                            </div><!-- end container -->
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <hr class="hr1"> 

                <div class="row">
                    <div class="col-md-12">
                        <
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->

            <hr class="hr1"> 

            <!-- end row -->
        </div><!-- end container -->

        <div class="copyrights">
            <div class="container-fluid">
                <div class="footer-distributed">
                    <div class="footer-left">

                        <p class="footer-company-name">All Rights Reserved. &copy; 2024</p>
                    </div>

                </div>
            </div><!-- end container -->
        </div>
    </div><!-- end section -->

    <!-- end section -->



    <!-- end copyrights -->
    <!-- end wrapper -->

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

    <!-- Menu Toggle Script -->


</body>
</html>
