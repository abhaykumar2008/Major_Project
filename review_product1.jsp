<%-- 
    Document   : Admin_Home
    Created on : 26 Jan, 2021, 1:22:27 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
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
<style>
    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        font-size: 20px;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 15px;
    }

    #customers tr:nth-child(even){background-color: #f2f2f2;}

    #customers tr:hover {background-color: #ddd;}

    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #1DA1F2;
        color: white;
    }
</style>
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
                    <li><a href="User_Home.jsp">Home</a></li>
                    <li><a href="User_Home1.jsp">Search Product</a></li>
                    <li><a class="active" href="Review.jsp">Review</a></li>
                    <li><a href="Features_review.jsp">Features</a>
                    <li><a href="index.html">logout</a></li>
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
                                <%

                                    String search = request.getParameter("search");

                                    HttpSession user = request.getSession();
                                    String uname = user.getAttribute("uname").toString();

                                    Statement st = SQLconnection.getconnection().createStatement();
                                    ResultSet rt = st.executeQuery("select * from product where pname like '%" + search + "%' ");
                                %>
                                <h2>Buy Products</h2><br><br>
                                <form action="review_product1.jsp" method="post" >
                                    Product Name:
                                    <input type="search" name="search" autofocus="autofocus" placeholder="Enter Product Name">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </form><br>
                            </div>
                            <%                        if (rt.next()) {

                                    rt.previous();

                                    while (rt.next()) {
                                        String id = rt.getString("pid");


                            %>
                            <div class="" style="float:left">

                                <h3><%=rt.getString("pname")%></h3>
                                <img src="Getimage?id=<%=id%>" width="500px;"><br><br>
                                <p><a href="review_product.jsp?id=<%=rt.getString("pid")%>&name=<%=rt.getString("pname")%>" style="font-size: 30px;color: #003333">Reviews</a><br><span style="width: 300px;font-size: 25px;color: #99ccff"><%=rt.getString("pdescription")%></span></p>
                            </div>

                            <br></br>
                            <%
                                }
                            } else {
                            %>
                            <center><h2 style="color: #003333;">No data found ...</h2></center>
                            <%
                                }
                            %>
                            <!-- end messagebox -->
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
