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

                                    String c = request.getParameter("category");
                                    String r = request.getParameter("range");
                                    String query = request.getParameter("type");


                                %>
                                <h2><a href="Review.jsp" class="btn btn-link" style="font-size:30px;">Looking For Another Product</a></h2>
                                <div class="row">
                                    <br><br>
                                    <center>
                                        <%                                            
                                            String ppid = request.getParameter("id");
                                            String ppname = request.getParameter("name");
                                            Statement st = SQLconnection.getconnection().createStatement();
                                            ResultSet rt = st.executeQuery("select * from product where  pid='" + ppid + "' ");
                                            if (rt.next()) {
                                                String pid = rt.getString("pid");
                                        %>
                                        <div style="float: left"><img src="Getimage?id=<%=pid%>" width="300" height="300"><br><%=ppname%></div>
                                            <%
                                                }
                                            %>

                                        <br><br><br>
                                        <div class="col-md-12" style="float: left">
                                            <form action="add_comment.jsp?<%=ppid%>,<%=ppname%>" method="post" name="comments">
                                                <br><br>
                                                <table id="customers">
                                                    <tr>
                                                    <th>Specifications</th>
                                                    <th>Rating</th>
                                                    <th>Comments</th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>Front Camera</h3>
                                                        </td>
                                                        &nbsp;&nbsp;
                                                        <td>
                                                            <input type="number" max="5" min="1" style="color: black;" placeholder="Enter Rating 1 to 5" name='fcamera_rating' required="required">
                                                        </td>
                                                        <td>
                                                            <textarea style="width: 300px;height: 60px;color: black;" placeholder="Enter your comment here" name='fcamera_comment' required="required"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>Rear Camera</h3>
                                                        </td>
                                                        &nbsp;&nbsp;
                                                        <td>
                                                            <input type="number" max="5" min="1" style="color: black;" placeholder="Enter Rating 1 to 5" name='rcamera_rating' required="required">
                                                        </td>
                                                        <td>
                                                            <textarea style="width: 300px;height: 60px;color: black;" placeholder="Enter your comment here" name='rcamera_comment' required="required"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>Speaker</h3>
                                                        </td>
                                                        &nbsp;&nbsp;
                                                        <td>
                                                            <input type="number" max="5" min="1" style="color: black;" placeholder="Enter Rating 1 to 5" name='speaker_rating' required="required">
                                                        </td>
                                                        <td>
                                                            <textarea style="width: 300px;height: 60px;color: black;" placeholder="Enter your comment here" name='speaker_comment' required="required"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>Screen:</h3>
                                                        </td>
                                                        &nbsp;
                                                        <td>
                                                            <input type="number" max="5" min="1" style="color: black;" placeholder="Enter Rating 1 to 5" name='screen_rating' required="required">
                                                        </td>
                                                        <td>
                                                            <textarea style="width: 300px;height: 60px;color: black;" placeholder="Enter your comment here" name='screen_comment' required="required"></textarea>
                                                        </td>
                                                        &nbsp;
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>Overall Rating:</h3>
                                                        </td>
                                                        &nbsp;
                                                        <td>
                                                            <input type="number" max="5" min="1" style="color: black;" placeholder="Enter Rating 1 to 5" name='overall_rating' required="required">
                                                        </td>
                                                        <td>
                                                            <textarea style="width: 300px;height: 60px;color: black;" placeholder="Enter your comment here" name='comment' required="required"></textarea>
                                                        </td>
                                                        &nbsp;
                                                    </tr>
                                                </table><br>
                                                <button type="submit" class="btn btn-success">Submit</button><br><br>
                                            </form>
                                        </div>
                                    </center>
                                    <br><br>
                                    <div class="row">
                                        <div class="col-md-12" style="float: left;width: 780px;">

                                            <form action="" name="showreviews" method="post" style="padding: 20px;">
                                                <table id="customers" style="margin-right: 300px">
                                                    <caption><h2>User Reviews</h2></caption>
                                                    <th>User Name</th>
                                                    <th>Overall Rating</th>
                                                    <th>Comments</th>
                                                        <%
                                                            double poscount = 0, negcount = 0, undefined = 0, neutralcount = 0;
                                                            Statement st1 = SQLconnection.getconnection().createStatement();
                                                            ResultSet rt1 = st1.executeQuery("select * from comments where product_id='" + ppid + "' ");
                                                            int i = 1;
                                                            while (rt1.next()) {
                                                                float sen = Float.parseFloat(rt1.getString("sentiment"));
                                                                if (sen >= 1) {
                                                                    poscount++;
                                                                }
                                                                if (sen < 0) {
                                                                    negcount++;
                                                                }
                                                                if (sen >= 0 && sen < 1) {
                                                                    neutralcount++;
                                                                }
                                                                if (i <= 5) {
                                                        %>
                                                    <tr>
                                                        <td><%=rt1.getString("uname")%></td>
                                                        <td><%=rt1.getString("ovr_rating")%></td>
                                                        <td><%=rt1.getString("comments")%></td>    
                                                    </tr>
                                                    <%
                                                            }
                                                            i++;
                                                        }

                                                    %>
                                                </table>
                                                <br><br><br><br>
                                                <h3>Review Analysis</h3>
                                                <div style="font-size: 20px;height: 250px;width: 700px;border-style: groove;padding: 10px;">
                                                    <a href="view_comments.jsp?<%=ppid%>,pos">Positive Reviews:<span style="color: #ff1a1a"> <%=poscount%></span></a>&nbsp;&nbsp;&nbsp;
                                                    <a href="view_comments.jsp?<%=ppid%>,neg">Negative Reviews:<span style="color: #ff1a1a"><%=negcount%></span></a>&nbsp;&nbsp;&nbsp;
                                                    <a href="view_comments.jsp?<%=ppid%>,neu">Neutral Reviews: <span style="color: #ff1a1a"><%=neutralcount%></span></a>
                                                        <%
                                                            System.out.println("Total count :" + i);
                                                            System.out.println("post count :" + poscount);
                                                            System.out.println("negative count :" + negcount);

                                                            double pos_precision = poscount / i;
                                                            double neg_precision = negcount / i;
                                                            double neu_precision = neutralcount / i;

                                                            double rate = (pos_precision + neu_precision) * 10;

                                                        %>
                                                    <p>Positive Precision :<%=pos_precision%></p>
                                                    <p style="margin-top: -30px;">Negative Precision :<%=neg_precision%></p>
                                                    <p style="margin-top: -30px;">Neutral Precision :<%=neu_precision%></p>
                                                    <div style="float: left;">
                                                        <h4>Rating :<%=rate%></h4>


                                                    </div>
                                                </div>
                                            </form>
                                        </div>
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

                                    <div id="chartexisting" >

                                    </div>



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
                            <p class="footer-company-name">All Rights Reserved. &copy; 2021</p>
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
