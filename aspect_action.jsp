<%-- 
    Document   : User_login
    Created on : 26 Jan, 2021, 12:40:41 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.util.Iterator"%>
<%@page import="FLRS.CheckNull"%>
<%@page import="FLRS.Sentiment"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
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
<style>
    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        font-size: 15px;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 10px;
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
                        <center><h1>Combined Feature Results</h1></center>
                        <br>
                        <table id="customers" style="margin-right: 300px">
                            <thead>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Reviewer Name</th>
                                    <th>Front Camera Rating & Comments</th>
                                    <th>Rear Camera Rating & Comments</th>
                                    <th>Speaker Rating & Comments</th>
                                    <th>Screen Rating & Comments</th>
                                    <th>Sentiment Analysis</th>
                                        <%
                                            String c = request.getParameter("category");

                                            //  String query="select `product_id`,`comments`,(SELECT pname FROM product where pid=c.product_id) as pname from comments c where product_id in (SELECT `pid` FROM `product` p)";
                                            String query = "SELECT * FROM product WHERE pname='" + c + "'";

                                            Connection con = SQLconnection.getconnection();
                                            Statement ps = con.createStatement();
                                            ResultSet products = ps.executeQuery(query);
                                            Sentiment sentiment = new Sentiment();

                                        %>

                                </tr>
                            </thead>
                            <tbody id="myTable">


                                <%            while (products.next()) {

                                        String pid = products.getString("pid");
                                        String pname = products.getString("pname");

                                %>

                                <tr>

                                    <%                                            
                                        double poscount = 0, negcount = 0, undefined = 0, neutralcount = 0;
                                        Statement st1 = SQLconnection.getconnection().createStatement();
                                        ResultSet rt1 = st1.executeQuery("select * from comments where product_id='"+pid+"'");
                                        while (rt1.next()) {
                                            int i = 1;
                                            String temp = "";
                                                float sen = Float.parseFloat(rt1.getString("sentiment"));
                                                if (sen >= 1) {
                                                    poscount++;
                                                    temp = "Positive";
                                                }
                                                if (sen < 0) {
                                                    negcount++;
                                                    temp = "Negative";
                                                }
                                                if (sen >= 0 && sen < 1) {
                                                    neutralcount++;
                                                    temp = "Neutral";
                                                }


                                    %>
                                    <td><img src="${pageContext.servletContext.contextPath }/Getimage?id=<%=pid%>" width="120" height="100"> <%=pname%></td>
                                    <td><%=rt1.getString("uname")%></td>
                                    <td><%=rt1.getString("fcam_rating")%>/<%=rt1.getString("fcam_comm")%></td>
                                    <td><%=rt1.getString("rcam_rating")%>/<%=rt1.getString("rcam_comm")%></td>
                                    <td><%=rt1.getString("spk_rating")%>/<%=rt1.getString("spk_comm")%></td>
                                    <td><%=rt1.getString("scr_rating")%>/<%=rt1.getString("scr_comm")%></td>
                                    <td><%=temp%></td>
                                     </tr>
                                    <%

                                            
                                        }
                                    %>
                               
                                <%
                                    }

                                    products.close();
                                    ps.close();
                                    con.close();

                                %>
                            </tbody>
                        </table>  
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
