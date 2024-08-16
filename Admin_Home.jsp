<%-- 
    Document   : Admin_Home
    Created on : 26 Jan, 2021, 1:22:27 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
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

</head>
<%
    if (request.getParameter("Success") != null) {
%>
<script>alert('Login Successfully');</script>
<%            }
%>
<body class="version">

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
        <div id="sidebar-wrapper">
            <div class="side-top">
                <div class="logo-sidebar">
                    <h2>Feature Level Rating</h2>
                </div>
                <ul class="sidebar-nav">
                    <li><a class="active" href="Admin_Home.jsp">Home</a></li>
                    <li><a href="add_products.jsp">Add Products</a></li>
                    <li><a href="user_review.jsp">User Reveiw</a></li>
                    <li><a href="performance_analysis.jsp">Analysis</a></li>
                    <li><a href="index.html">Logout</a></li>
                </ul>
            </div>
        </div>
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
                                <h2>Welcome Admin!</h2><br><br>
                                <center>
                                        <img src="images/admin.gif" width="700" height="500">
                                    </center>
                            </div><!-- end messagebox -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <hr class="hr1"> 
                    <div class="row">
                        <div class="col-md-12">
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
                <hr class="hr1"> 
            </div><!-- end container -->
        </div><!-- end section -->
        <div class="copyrights">
            <div class="container-fluid">
                <div class="footer-distributed">
                    <div class="footer-left">
                        <p class="footer-company-name">All Rights Reserved. &copy; 2024</p>
                    </div>
                </div>
            </div><!-- end container -->
        </div>
    </div><!-- end wrapper -->

    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
