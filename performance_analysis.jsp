<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>

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
                    <li><a class="active" href="performance_analysis.jsp">Analysis</a></li>
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
                                <h2>Analysis</h2><br>
                                            <%
                                                Gson gsonObj = new Gson();
                                                Map<Object, Object> map = null;
                                                List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
                                                String dataPoints = null;

                                                try {

                                                    Connection connection = SQLconnection.getconnection();
                                                    Statement statement = connection.createStatement();
                                                    String xVal, yVal;

                                                    ResultSet resultSet = statement.executeQuery("SELECT product_name,AVG(ovr_rating) FROM comments group by product_name");

                                                    while (resultSet.next()) {
                                                        xVal = (resultSet.getString("product_name")+" Rating:");
                                                        yVal = resultSet.getString("AVG(ovr_rating)");
                                                        map = new HashMap<Object, Object>();
                                                        map.put("label", xVal);
                                                        map.put("y", yVal);
                                                        list.add(map);
                                                        dataPoints = gsonObj.toJson(list);
                                                    }
                                                    System.out.println(dataPoints);
                                                } catch (SQLException e) {
                                                    System.out.println(e);
                                                    out.println("<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
                                                    dataPoints = null;
                                                }
                                            %>
                                            <script type="text/javascript">
                                                window.onload = function () {


                                                    var chart = new CanvasJS.Chart("chartContainer", {
                                                        animationEnabled: true,

                                                        title: {
                                                            text: "Product Rating"
                                                        },
                                                        data: [{
                                                                type: "pie",
                                                                radius: "200%",
                                                                showInLegend: true,
                                                                legendText: "{label}",
                                                                toolTipContent: "{label}: <strong>{y}</strong>",
                                                                indexLabel: "{label} {y}",
                                                                dataPoints: <%out.print(dataPoints);%>
                                                            }]
                                                    });

                                                    chart.render();

                                                }
                                            </script>
                                            <div  id="chartContainer" style="height: 400px; width: 100%; margin-right: 150px"></div>
                                <hr class="hr1"> 
                                <div class="row">
                                    <div class="col-md-12">
                                    </div>
                                </div><!-- end col -->
                            </div><!-- end row -->
                            <hr class="hr1"> 
                        </div><!-- end container -->
                    </div>
                </div>
            </div><!-- end section -->
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
        <!-- end wrapper -->


        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>


        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
                                                $(document).ready(function () {
                                                    // navigation click actions 
                                                    $('.scroll-link').on('click', function (event) {
                                                        event.preventDefault();
                                                        var sectionID = $(this).attr("data-id");
                                                        scrollToID('#' + sectionID, 750);
                                                    });
                                                    // scroll to top action
                                                    $('.scroll-top').on('click', function (event) {
                                                        event.preventDefault();
                                                        $('html, body').animate({scrollTop: 0}, 'slow');
                                                    });
                                                    // mobile nav toggle
                                                    $('#nav-toggle').on('click', function (event) {
                                                        event.preventDefault();
                                                        $('#main-nav').toggleClass("open");
                                                    });
                                                });
                                                // scroll function
                                                function scrollToID(id, speed) {
                                                    var offSet = 0;
                                                    var targetOffset = $(id).offset().top - offSet;
                                                    var mainNav = $('#main-nav');
                                                    $('html,body').animate({scrollTop: targetOffset}, speed);
                                                    if (mainNav.hasClass("open")) {
                                                        mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                                                        mainNav.removeClass("open");
                                                    }
                                                }
                                                if (typeof console === "undefined") {
                                                    console = {
                                                        log: function () { }
                                                    };
                                                }
        </script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

        <script src="js/all.js"></script>
        <script src="js/responsive-tabs.js"></script>
        <script src="js/custom.js"></script>

</body>
</html>






