<%-- 
    Document   : User_login
    Created on : 26 Jan, 2021, 12:40:41 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
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
                    <li><a href="User_Home.jsp">Home</a></li>
                    <li><a href="User_Home1.jsp">Search Product</a></li>
                    <li><a href="Review.jsp">Review</a></li>
                    <li><a class="active" href="Features_review.jsp">Features</a>
                    <li><a href="index.html">logout</a></li>
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
                                <h2>Feature Level Rating</h2><br><br>
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2 text-center">
                                        <div class="message-box">
                                           
                                            <h2>Search Product</h2>
                                            <div class="row">
                                                <br><br>
                                                <center>
                                                    <form action="aspect_action.jsp" method="post">
                                                        <select style="color:black;width:250px;height: 50px;" required="required" name="category"><option value="">Select Product</option>
                                                            <%                                                    Statement st = SQLconnection.getconnection().createStatement();
                                                                ResultSet rt = st.executeQuery("SELECT distinct(pname) FROM `flrs`.`product`;");
                                                                while (rt.next()) {
                                                            %>
                                                            <option value="<%=rt.getString("pname")%>"><%=rt.getString("pname")%></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select><br><br>

                                                        <button type="submit" class="btn btn-success">Apply</button><br><br>
                                                    </form>
                                                </center>
                                            </div>
                                         <!-- end col -->
                                    </div>
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
