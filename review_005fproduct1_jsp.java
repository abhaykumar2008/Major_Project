package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import DBconnection.SQLconnection;
import java.sql.Statement;

public final class review_005fproduct1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <!-- Basic -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   \n");
      out.write("    <title>Feature Level Rating System</title>  \n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <!-- Site Icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- Site CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <!-- Colors CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/colors.css\">\n");
      out.write("    <!-- ALL VERSION CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/versions.css\">\n");
      out.write("    <!-- Responsive CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write("    #customers {\n");
      out.write("        font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n");
      out.write("        font-size: 20px;\n");
      out.write("        border-collapse: collapse;\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #customers td, #customers th {\n");
      out.write("        border: 1px solid #ddd;\n");
      out.write("        padding: 15px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #customers tr:nth-child(even){background-color: #f2f2f2;}\n");
      out.write("\n");
      out.write("    #customers tr:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("    #customers th {\n");
      out.write("        padding-top: 12px;\n");
      out.write("        padding-bottom: 12px;\n");
      out.write("        text-align: left;\n");
      out.write("        background-color: #1DA1F2;\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<body class=\"version\">\n");
      out.write("\n");
      out.write("    <div id=\"preloader\">\n");
      out.write("        <div class=\"cube-wrapper\">\n");
      out.write("            <div class=\"cube-folding\">\n");
      out.write("                <span class=\"leaf1\"></span>\n");
      out.write("                <span class=\"leaf2\"></span>\n");
      out.write("                <span class=\"leaf3\"></span>\n");
      out.write("                <span class=\"leaf4\"></span>\n");
      out.write("            </div>\n");
      out.write("            <span class=\"loading\" data-name=\"Loading\">Loading</span>\n");
      out.write("        </div>\n");
      out.write("    </div><!-- end loader -->\n");
      out.write("    <!-- END LOADER -->\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("        <div id=\"sidebar-wrapper\">\n");
      out.write("            <div class=\"side-top\">\n");
      out.write("                <div class=\"logo-sidebar\">\n");
      out.write("                    <h2>Feature Level Rating</h2>\n");
      out.write("                </div>\n");
      out.write("                <ul class=\"sidebar-nav\">\n");
      out.write("                    <li><a href=\"User_Home.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"User_Home1.jsp\">Search Product</a></li>\n");
      out.write("                    <li><a class=\"active\" href=\"Review.jsp\">Review</a></li>\n");
      out.write("                    <li><a href=\"Features_review.jsp\">Features</a>\n");
      out.write("                    <li><a href=\"index.html\">logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"page-content-wrapper\">\n");
      out.write("            <a href=\"#menu-toggle\" class=\"menuopener\" id=\"menu-toggle\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("\n");
      out.write("            <div id=\"home\" class=\"parallax first-section\" style=\"background-image:url('images/mobile.png');\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                    </div><!-- end row -->\n");
      out.write("                </div><!-- end container -->\n");
      out.write("            </div><!-- end section -->\n");
      out.write("            <section class=\"section nopad cac text-center\">\n");
      out.write("                <a href=\"index.html\"><h3>Feature-Level Rating System Using Customer Reviews and Review Votes</h3></a>\n");
      out.write("            </section>\n");
      out.write("            <div class=\"section wb\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-8 col-md-offset-2 text-center\">\n");
      out.write("                            <div class=\"message-box\">\n");
      out.write("                                ");


                                    String search = request.getParameter("search");

                                    HttpSession user = request.getSession();
                                    String uname = user.getAttribute("uname").toString();

                                    Statement st = SQLconnection.getconnection().createStatement();
                                    ResultSet rt = st.executeQuery("select * from product where ptype='main' and pname like '%" + search + "%' ");
                                
      out.write("\n");
      out.write("                                <h2>Buy Products</h2><br><br>\n");
      out.write("                                <form action=\"review_product1.jsp\" method=\"post\" >\n");
      out.write("                                    Product Name:\n");
      out.write("                                    <input type=\"search\" name=\"search\" autofocus=\"autofocus\" placeholder=\"Enter Product Name\">\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("                                </form><br>\n");
      out.write("                            </div>\n");
      out.write("                            ");
                        if (rt.next()) {

                                    rt.previous();

                                    while (rt.next()) {
                                        String id = rt.getString("pid");


                            
      out.write("\n");
      out.write("                            <div class=\"\" style=\"float:left\">\n");
      out.write("\n");
      out.write("                                <h3>");
      out.print(rt.getString("pname"));
      out.write("</h3>\n");
      out.write("                                <img src=\"Getimage?id=");
      out.print(id);
      out.write("\" width=\"500px;\"><br><br>\n");
      out.write("                                <p><a href=\"review_product.jsp?id=");
      out.print(rt.getString("pid"));
      out.write("&name=");
      out.print(rt.getString("pname"));
      out.write("\" style=\"font-size: 30px;color: #003333\">Reviews</a><br><span style=\"width: 300px;font-size: 25px;color: #99ccff\">");
      out.print(rt.getString("pdescription"));
      out.write("</span></p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <br></br>\n");
      out.write("                            ");

                                }
                            } else {
                            
      out.write("\n");
      out.write("                            <center><h2 style=\"color: #003333;\">No data found ...</h2></center>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            <!-- end messagebox -->\n");
      out.write("                        </div><!-- end col -->\n");
      out.write("                    </div><!-- end row -->\n");
      out.write("                    <hr class=\"hr1\"> \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- end col -->\n");
      out.write("                </div><!-- end row -->\n");
      out.write("                <hr class=\"hr1\"> \n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div><!-- end section -->\n");
      out.write("        <div class=\"copyrights\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"footer-distributed\">\n");
      out.write("                    <div class=\"footer-left\">\n");
      out.write("                        <p class=\"footer-company-name\">All Rights Reserved. &copy; 2021</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div>\n");
      out.write("    </div><!-- end wrapper -->\n");
      out.write("\n");
      out.write("    <script src=\"js/all.js\"></script>\n");
      out.write("    <script src=\"js/responsive-tabs.js\"></script>\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
