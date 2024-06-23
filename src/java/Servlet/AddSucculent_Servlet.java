/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DAO.SucculentDAO;
import Object.Category;
import Object.Succulent;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class AddSucculent_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet AddSucculent_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSucculent_Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SucculentDAO sd = new SucculentDAO();
        List<Category> listCategory = new ArrayList<>();
        listCategory = sd.getAllCategory();
        PrintWriter out = response.getWriter();
        for (Category category : listCategory) {
            out.print(category);
        }
        request.setAttribute("listCategory", listCategory);
        request.getRequestDispatcher("AddSucculent.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String des = request.getParameter("describe");
        String mean = request.getParameter("meaning");
        String grow = request.getParameter("grow");
        
        String priceS = request.getParameter("price");
        String quantityS = request.getParameter("quantity");
        String cateS = request.getParameter("category");
        int quantity,cate;
        double price;
        try {
            quantity = Integer.parseInt(quantityS);
            cate = Integer.parseInt(cateS);
            price = Double.parseDouble(priceS);
            Succulent s = new Succulent(name, quantity, cate, price, des, img, mean, grow);
            PrintWriter out = response.getWriter();
            out.print(s.toString());
            SucculentDAO sd = new SucculentDAO();
            sd.addSucculent(s);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
        }
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
