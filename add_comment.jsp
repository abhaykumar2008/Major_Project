 
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.util.HashMap"%>
<%@page import="FLRS.Sentiment"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    String pid = request.getParameter("ppid");
    String fcam_rating = request.getParameter("fcamera_rating");
    String fcam_comm = request.getParameter("fcamera_comment");
    String rcam_rating = request.getParameter("rcamera_rating");
    String rcam_comm = request.getParameter("rcamera_comment");
    String spk_rating = request.getParameter("speaker_rating");
    String spk_comm = request.getParameter("speaker_comment");
    String scr_rating = request.getParameter("screen_rating");
    String scr_comm = request.getParameter("screen_comment");
    String comment = request.getParameter("comment");
    String ovr_rating = request.getParameter("overall_rating");
    String[] p = request.getQueryString().split(",");
    String id = p[0];
    String pname = p[1];
    System.out.println("ok");

    HttpSession user = request.getSession();
    String uname = user.getAttribute("uname").toString();

    Connection con = SQLconnection.getconnection();

    int poscount = 0, negcount = 0, undefined = 0, neutralcount = 0;

    Sentiment s = new Sentiment();
    float sentiment = s.findSentiment(comment.trim());

    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into comments (comments, uname, status_, product_id, product_name, sentiment, ovr_rating, fcam_rating, fcam_comm, rcam_rating, rcam_comm, spk_rating, spk_comm, scr_rating, scr_comm) values ('" + comment + "','" + uname + "','yes','" + id + "','"+ pname +"','" + sentiment + "','"+ovr_rating+"','"+fcam_rating+"','"+fcam_comm+"','"+rcam_rating+"','"+rcam_comm+"','"+spk_rating+"','"+spk_comm+"','"+scr_rating+"','"+scr_comm+"')");
    if (i != 0) {
        out.println("inserted");
        response.sendRedirect("User_Home1.jsp?comment_added");
    } else {
        out.println("failed...");
    }

%>