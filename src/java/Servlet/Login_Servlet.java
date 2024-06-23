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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "Login_Servlet", urlPatterns = {"/login"})
public class Login_Servlet extends HttpServlet {

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
            out.println("<title>Servlet Login_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login_Servlet at " + request.getContextPath() + "</h1>");
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
        String xName = request.getParameter("username");
        String xPass = request.getParameter("password");
        String remember = request.getParameter("remember");
        
        Cookie cookieUser = new Cookie("cuser", xName);
        Cookie cookiePass = new Cookie("cpass", xPass);
        Cookie cookieRemember = new Cookie("cremem", remember);
        if(remember != null){
            // set cookie lưu trữ 5 phút
            cookieUser.setMaxAge(60*5);
            cookiePass.setMaxAge(60*5);
            cookieRemember.setMaxAge(60*5);
        }else{
            // set cookie lưu trữ 0 giây ~ xóa luôn 3 
            cookieUser.setMaxAge(0);
            cookiePass.setMaxAge(0);
            cookieRemember.setMaxAge(0);
        }
        response.addCookie(cookieUser);
        response.addCookie(cookiePass);
        response.addCookie(cookieRemember);
        
        Account account;
        LoginDAO loginDAO = new LoginDAO();
        HttpSession session = request.getSession();

        account = loginDAO.checkAccount(xName, xPass);
        PrintWriter out = response.getWriter();
        out.print(account);
        if (account == null) {
            request.setAttribute("error", "Username or password invalid!!!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            session.setAttribute("account", account);
            response.sendRedirect("home.jsp");

        }
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
        String xName = request.getParameter("username");
        String xPass = request.getParameter("password");
        String remember = request.getParameter("remember");
        
        Cookie cookieUser = new Cookie("cookiUser", xName);
        Cookie cookiePass = new Cookie("cookiPass", xPass);
        Cookie cookieRemember = new Cookie("cookiRemember", remember);
        if(remember != null){
            // set cookie lưu trữ 5 phút
            cookieUser.setMaxAge(60*5);
            cookiePass.setMaxAge(60*5);
            cookieRemember.setMaxAge(60*5);
        }else{
            // set cookie lưu trữ 0 giây ~ xóa luôn 3 
            cookieUser.setMaxAge(0);
            cookiePass.setMaxAge(0);
            cookieRemember.setMaxAge(0);
        }
        response.addCookie(cookieUser);
        response.addCookie(cookiePass);
        response.addCookie(cookieRemember);
        
        Account account;
        LoginDAO loginDAO = new LoginDAO();
        HttpSession session = request.getSession();

        account = loginDAO.checkAccount(xName, xPass);
        PrintWriter out = response.getWriter();
        out.print(account);
        if (account == null) {
            request.setAttribute("error", "Username or password invalid!!!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            session.setAttribute("account", account);
            response.sendRedirect("home.jsp");

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
