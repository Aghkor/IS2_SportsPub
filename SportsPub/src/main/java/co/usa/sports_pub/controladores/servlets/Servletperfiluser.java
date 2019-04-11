/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.controladores.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PERSONAL
 */
@WebServlet(name = "Servletperfiluser", urlPatterns = {"/Servletperfiluser"})
public class Servletperfiluser extends HttpServlet {

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
        processRequest(request, response);
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
        processRequest(request, response);
        
        String usuario =  "cehd1317" ;//request.getParameter("user");
        String nombre = "camilo" ;//request.getParameter("nombre");
        String apellido = "hernandez" ;//request.getParameter("apellido");
        String email = "correo@electronico"; //request.getParameter("email");
        String celular = "213132";// request.getParameter("celular");
        String edad = "21";//request.getParameter("edad");
        String genero ="masculino";// request.getParameter("genero");    
        String eqfut_5= "Niupi"; //request.getParameter("eqfut_5");
        String eqfut_8= "LosMillos"; //request.getParameter("eqfut_8");
        String JSON = "{\"persona\": {\"usuario\":\"" + usuario + "\",\"nombre\":\""+ nombre + "\",\"apellido\":\"" + apellido + "\",\"email\":\""
                + email + "\",\"celular\":\"" + celular + "\",\"edad\":\"" + edad + "\",\"genero\":\"" + genero + "\",\"futeq5\":\"" + eqfut_5 + "\",\"futeq8 \":\"" + eqfut_8 + "\"}}" ;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             out.print(JSON);
            
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
