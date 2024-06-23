/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DAO.LoginDAO;
import Object.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "ChangePassWord_Servlet", urlPatterns = {"/changepass"})
public class ChangePassWord_Servlet extends HttpServlet {

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
            out.println("<title>Servlet ChangePassWord_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassWord_Servlet at " + request.getContextPath() + "</h1>");
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");
        String reNewPassword = request.getParameter("reNewPassword");
        Account x = new Account(username, password, 2);
        LoginDAO l = new LoginDAO();
        if (!l.checkExit(x)) {
            request.setAttribute("error", "The old password are wrong");
            request.setAttribute("confirm", 0);
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        }
        if (!newPassword.equals(reNewPassword)) {
            request.setAttribute("error1", "The new password and confirm new password have to same");
            request.setAttribute("confirm", 0);
            request.getRequestDispatcher("changePassword.jsp").forward(request, response);
        }
        request.setAttribute("a", password);
        request.setAttribute("b", newPassword);
        request.setAttribute("c", reNewPassword);
        request.setAttribute("confirm", 1);
        request.getRequestDispatcher("changePassword.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account x = (Account) session.getAttribute("account");
        String newPassword = request.getParameter("newPassword");
        LoginDAO l = new LoginDAO();
        PrintWriter out = response.getWriter();
        out.print(newPassword);
        l.changePass(newPassword, x.getUsername());
        request.setAttribute("done", "Change succesfully");
        request.getRequestDispatcher("changePassword.jsp").forward(request, response);
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
