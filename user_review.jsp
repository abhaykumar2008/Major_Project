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
    </div>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <div class="side-top">
                <div class="logo-sidebar">
                    <h2>Feature Level Rating</h2>
                </div>
                <ul class="sidebar-nav">
                    <li><a href="Admin_Home.jsp">Home</a></li>
                    <li><a href="add_products.jsp">Add Products</a></li>
                    <li><a class="active" href="user_review.jsp">User Reveiw</a></li>
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
                        <form action="" name="showreviews" method="post" style="padding: 20px;">
                            <table id="customers" style="margin-right: 300px">
                                <caption><h2>User Reviews</h2></caption>
                                <th>Product Name</th>
                                <th>Reviewer Name</th>
                                <th>Front Camera Rating & Comments</th>
                                <th>Rear Camera Rating & Comments</th>
                                <th>Speaker Rating & Comments</th>
                                <th>Screen Rating & Comments</th>
                                <th>Sentiment Analysis</th>
                                <th>Overall Rating</th>
                                <th>Comments</th>
                                    <%
                                        double poscount = 0, negcount = 0, undefined = 0, neutralcount = 0;
                                        Statement st1 = SQLconnection.getconnection().createStatement();
                                        ResultSet rt1 = st1.executeQuery("select * from comments ");
                                        int i = 1;
                                        String temp = "";
                                        while (rt1.next()) {
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
                                <tr>
                                    <td><img src="${pageContext.servletContext.contextPath }/Getimage?id=<%=rt1.getString("product_id")%>" width="120" height="100"> <%=rt1.getString("product_name")%></td>
                                    <td><%=rt1.getString("uname")%></td>
                                    <td><%=rt1.getString("fcam_rating")%>/<%=rt1.getString("fcam_comm")%></td>
                                    <td><%=rt1.getString("rcam_rating")%>/<%=rt1.getString("rcam_comm")%></td>
                                    <td><%=rt1.getString("spk_rating")%>/<%=rt1.getString("spk_comm")%></td>
                                    <td><%=rt1.getString("scr_rating")%>/<%=rt1.getString("scr_comm")%></td>
                                    <td><%=temp%></td>
                                    <td><%=rt1.getString("ovr_rating")%></td>
                                    <td><%=rt1.getString("comments")%></td>    
                                </tr>
                                <%
                                        }
                               
                                %>
                            </table>
                        </form>
                    </div>
                    <div style="height: 200px;"></div>   
                    <!--                    chart contents starts-->
                    <div style="margin-left: 200px;">
                        <div>
                            <div id="charts" >

                            </div> 
                        </div>
                        <div style="margin-left: 700px;margin-top: -300px;">
                            <div id="chart-container"></div> 
                        </div>


                    </div>

                    <div id="chartexisting" ><!-- end row -->
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
            </div><!-- end copyrights -->
        </div>
    </div><!-- end wrapper -->
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
