/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Servlet;

import DAO.BillDAO;
import DAO.SucculentDAO;
import Object.Account;
import Object.Succulent;
import Object.Order;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
@WebServlet(name="LoadToCartPage", urlPatterns={"/Loadtocartpage"})
public class LoadToCartPage extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadToCartPage</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadToCartPage at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        List<Order> list = new ArrayList<>();
        BillDAO biDAO = new BillDAO();
        list = biDAO.getOrderByUser(account.getUsername());
        
        // cung cấp thông in tên, ảnh sản phẩm cho order để hiển thị tt
        PrintWriter p = response.getWriter();
        SucculentDAO sdao = new SucculentDAO();
        List<Order> listFull = new ArrayList<>();
        for (Order order : list) {
            p.println(order.getIDSu());
            Succulent s = sdao.getSucculentbyID(order.getIDSu());
            p.println(s);
            String user = order.getUsername();
            String name = s.getName();
            String img = s.getImg();
            Order o = new Order(user, order.getIDSu(), name, img, order.getQuantity(), order.getPrice());
            listFull.add(o);
        }
        
        
        
        request.setAttribute("list", listFull);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
