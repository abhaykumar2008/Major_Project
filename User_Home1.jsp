<%-- 
    Document   : User_Home
    Created on : 26 Jan, 2021, 1:20:29 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
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

</head>
<%
    if (request.getParameter("comment_added") != null) {
%>
<script>alert('Comment Added');</script>
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
    </div>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <div class="side-top">
                <div class="logo-sidebar">
                    <h2>Feature Level Rating</h2>
                </div>
                <ul class="sidebar-nav">
                    <li><a href="User_Home.jsp">Home</a></li>
                    <li><a class="active" href="User_Home1.jsp">Search Product</a></li>
                    <li><a href="Review.jsp">Review</a></li>
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

                                    String c = request.getParameter("category");
                                    String r = request.getParameter("range");
                                    String query = request.getParameter("type");

                                %>
                                <h2>Search Product</h2>
                                <div class="row" style="float: left">
                                    <br><br>
                                    <center>
                                        <form action="User_Home1.jsp" method="post">
                                            <select style="color:black;width:250px;height: 50px;" required="required" name="category"><option value="">Select Product</option>
                                                <%
                                                    Statement st = SQLconnection.getconnection().createStatement();
                                                    ResultSet rt = st.executeQuery("SELECT distinct(psuggest_for) FROM `flrs`.`product`;");
                                                    while (rt.next()) {
                                                %>
                                                <option value="<%=rt.getString("psuggest_for")%>"><%=rt.getString("psuggest_for")%></option>
                                                <%
                                                    }
                                                %>
                                            </select><br><br>
                                            
                                            <button type="submit" class="btn btn-success">Apply</button><br><br>
                                        </form>
                                    </center>
                                </div>
                                <%
                                    Connection con = SQLconnection.getconnection();
                                    Statement st1 = con.createStatement();
                                    Statement st2 = con.createStatement();
                                    ResultSet rt1 = st1.executeQuery("SELECT * FROM product WHERE psuggest_for = '" + c + "'");
                                    while (rt1.next()) {
                                        String pprice = rt1.getString("pprice");
                                        String pid = rt1.getString("pid");
                                        String pname = rt1.getString("pname");
                                %>




                                <!-- end messagebox -->
                            </div>
                            <div class="row" style="float: right">
                                <a href="review_product.jsp?id=<%=pid%>&name=<%=pname%>"><img src="Getimage?id=<%=pid%>" width="300" height="300"><br><%=pname%></a>
                            </div>
                            <%}
                            %><!-- end col -->
                        </div>
                        <!-- end row -->
                        <hr class="hr1"> 
                        <!-- end col -->
                    </div><!-- end row -->
                    <div class="row">
                        <div class="col-md-12">

                        </div>
                    </div>
                </div><!-- end container -->
            </div><!-- end section -->

            <!-- end copyrights -->
        </div>
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
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
