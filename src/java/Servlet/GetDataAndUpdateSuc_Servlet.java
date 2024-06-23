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
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
@WebServlet(name = "GetDataAndUpdateSuc_Servlet", urlPatterns = {"/updateSucculent"})
public class GetDataAndUpdateSuc_Servlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        out.println("hello");
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
        String ids = request.getParameter("id");
        String name = request.getParameter("name");
        String priceS = request.getParameter("price");
        String quantityS = request.getParameter("quantity");
        String img = request.getParameter("img");
        String describe = request.getParameter("describe");
        String categoryS = request.getParameter("category");
        String meaning = request.getParameter("meaning");
        String grow = request.getParameter("grow");
        int id = -1, quantity = 0, category = 0;
        double price = 0;
        try {
            id = Integer.parseInt(ids);
            price = Double.parseDouble(priceS);
            quantity = Integer.parseInt(quantityS);
            category = Integer.parseInt(categoryS);
        } catch (Exception e) {
        }
        SucculentDAO sdao = new SucculentDAO();
        Succulent s = new Succulent(id, name, quantity, category, price, describe, img, meaning, grow);
        sdao.update(s);
        processRequest(request, response);
        //            List<Succulent> listSucculent = new ArrayList<>();
//            SucculentDAO sd = new SucculentDAO();
//            listSucculent = sd.getAllSucculent();
//            List<Category> listCategory = new ArrayList<>();
//            listCategory = sd.getAllCategory();
//            
//            request.setAttribute("list", listSucculent);
//            request.setAttribute("listCategory", listCategory);
        request.getRequestDispatcher("album").forward(request, response);

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
        String ids = request.getParameter("id");
        String name = request.getParameter("name");
        String priceS = request.getParameter("price");
        String quantityS = request.getParameter("quantity");
        String img = request.getParameter("img");
        String describe = request.getParameter("describe");
        String categoryS = request.getParameter("category");
        String meaning = request.getParameter("meaning");
        String grow = request.getParameter("grow");

        try {
            int id = Integer.parseInt(ids);
            double price = Double.parseDouble(priceS);
            int quantity = Integer.parseInt(quantityS);
            int category = Integer.parseInt(categoryS);
            SucculentDAO sdao = new SucculentDAO();
            Succulent s = new Succulent(id, name, quantity, category, price, describe, img, meaning, grow);
            sdao.update(s);
//            List<Succulent> listSucculent = new ArrayList<>();
//            listSucculent = sdao.getAllSucculent();
//            List<Category> listCategory = new ArrayList<>();
//            listCategory = sdao.getAllCategory();
//            PrintWriter out = response.getWriter();
//            out.println("hello");
//            request.setAttribute("list", listSucculent);
//            request.setAttribute("listCategory", listCategory);
            request.getRequestDispatcher("album").forward(request, response);
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
