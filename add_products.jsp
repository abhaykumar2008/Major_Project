<%-- 
    Document   : add_products
    Created on : 26 Jan, 2021, 4:16:45 PM
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

</head>
<%
    if (request.getParameter("stored") != null) {
%>
<script>alert('Product Added');</script>
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
                    <li><a class="active" href="Admin_Home.jsp">Home</a></li>
                    <li><a class="active" href="add_products.jsp">Add Products</a></li>
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
                                <h2>Add Products</h2>
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <div class="contact_form">
                                            <div id="message"></div>
                                            <form action="add_products" method="post" enctype="multipart/form-data">
                                                <fieldset class="row-fluid">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pname" class="form-control" required="Required" placeholder="Enter Product Name">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pprice" class="form-control" required="Required" placeholder="Enter Product Price">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pbuying_price" class="form-control" required="Required" placeholder="Enter Buying Price">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pqty" class="form-control" required="Required" placeholder="Enter Qty">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pdescription" class="form-control" required="Required" placeholder="Enter Description">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="psuggest" class="form-control" required="Required" placeholder="Enter Suggest for">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pcompany" class="form-control" required="Required" placeholder="Enter Company Name">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="pcompany_details" class="form-control" required="Required" placeholder="Enter Company Details">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="payment" class="form-control" required="Required" placeholder="Enter Paid Amount">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="text" name="paid_mode" class="form-control" required="Required" placeholder="Enter Paid Mode">
                                                    </div>
                                                    <select name="ptype" class="form-control" required="Required">
                                                        <option value="">Select Product Type</option>
                                                        <option>MAIN</option>
                                                        <option>ACCESSORIES</option>
                                                    </select>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <input type="file" name="pimage" class="form-control" required="Required">
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                                        <button type="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block subt">Add Product</button>
                                                    </div><br><br>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div><!-- end col -->
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
                        <p class="footer-company-name">All Rights Reserved. &copy; 2024</p>
                    </div>
                </div>
            </div><!-- end container -->
        </div><!-- end copyrights -->
    </div><!-- end wrapper -->
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>

