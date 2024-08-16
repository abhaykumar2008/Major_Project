/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FLRS;

import DBconnection.SQLconnection;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nadanapathy
 */
@WebServlet("/add_products")
@MultipartConfig(maxFileSize = 16177215) 
public class add_products extends HttpServlet {
final String path="C:/temps/";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            File file = new File(path);
            file.mkdir();
            MultipartRequest m=new MultipartRequest(request, path);
            File pimage=m.getFile("pimage");
            String query="insert into product (pname, pqty, pprice, pdescription, putilize, psuggest_for, ptype, pimage)values (?,?,?,?,?,?,?,?)";
            
            SimpleDateFormat sdf=new SimpleDateFormat("dd:MM:YYYY hh:mm");
            Date date=new Date();
            String time=sdf.format(date);
            
            Connection con= SQLconnection.getconnection();
            PreparedStatement ps= con.prepareStatement(query);
            ps.setString(1, m.getParameter("pname"));
            ps.setString(2, m.getParameter("pqty"));
            ps.setString(3, m.getParameter("pprice"));
            ps.setString(4, m.getParameter("pdescription"));
            ps.setString(5, "0");
            ps.setString(6, m.getParameter("psuggest"));
            ps.setString(7, m.getParameter("ptype"));
            ps.setAsciiStream(8, new FileInputStream(pimage), (int)pimage.length());
             
            out.println(ps.execute());
            ps.close();
            //updated to product table
            Statement st=con.createStatement();
            ResultSet rt=st.executeQuery("select pid from product where pname='"+m.getParameter("pname")+"' and ptype='"+m.getParameter("ptype")+"'");
            String pid=null;
            if(rt.next()){
                //getting product id
                pid=rt.getString("pid");
            }
            
            
            String query1="insert into product_main(pid, pname, pselling_price, pbuying_price, profit_per_piece, pcompany, pcomany_details, pdiscount, pdescription, pimage, ptype, psuggested_for, payment, balance, paid_mode, time_)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement ps1=con.prepareStatement(query1);
            ps1.setString(1, pid);
            ps1.setString(2, m.getParameter("pname"));
            ps1.setString(3, m.getParameter("pprice"));
            ps1.setString(4, m.getParameter("pbuying_price"));
            double tot_price=Integer.parseInt(m.getParameter("pbuying_price")) * Integer.parseInt(m.getParameter("pqty"));
            double profit=Integer.parseInt(m.getParameter("pprice"))-Integer.parseInt(m.getParameter("pbuying_price"));
            ps1.setString(5, profit+"");
            ps1.setString(6, m.getParameter("pcompany"));
            ps1.setString(7, m.getParameter("pcompany_details"));
            ps1.setString(8, "0");
            ps1.setString(9, m.getParameter("pdescription"));
            
            ps1.setAsciiStream(10, new FileInputStream(pimage), (int)pimage.length());
            ps1.setString(11, m.getParameter("ptype"));
            ps1.setString(12, m.getParameter("psuggest"));
            ps1.setString(13, m.getParameter("payment"));
            double balance=tot_price-Integer.parseInt(m.getParameter("payment"));
            ps1.setString(14, balance+"");
            ps1.setString(15, m.getParameter("paid_mode"));
            ps1.setString(16, time);
            ps1.execute();
            
            //out.println("success.......");
            response.sendRedirect("add_products.jsp?stored");
        }
        catch(Exception e){
            out.println(e);
        }
        finally {            
            out.close();
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
