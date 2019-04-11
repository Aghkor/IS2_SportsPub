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
@WebServlet(name = "Servletperfil_eq5", urlPatterns = {"/Servletperfil_eq5"})
public class Servletperfil_eq5 extends HttpServlet {

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
        String nombreequipo =  "Niupi" ;//request.getParameter("user");
        String liderequipo = "camilo" ;//request.getParameter("nombre");
        String generoequipo= "Masculino" ;//request.getParameter("apellido");
        String numjugadores = "4"; //request.getParameter("email");        
        
        String jug1 = "Oliver";// request.getParameter("celular");
        String jug2 = "Benji";//request.getParameter("edad");
        String jug3 ="Kagawa";// request.getParameter("genero");    
        String jug4 = "Arango"; //request.getParameter("eqfut_5");
        String jug5 = null; //request.getParameter("eqfut_8");
        
        String JSON = "{\"equipo\": {\"nombre\":\"" + nombreequipo + "\",\"lider\":\""+ liderequipo + "\",\"genero\":\"" + generoequipo+ "\",\"numero\":\""
                + numjugadores + "\",\"j1\":\"" + jug1 + "\",\"j2\":\"" + jug2 + "\",\"j3\":\"" + jug3 + "\",\"j4\":\"" + jug4 + "\",\"j5 \":\"" + jug5 + "\"}}" ;
         response.setContentType("text/html;charset=UTF-8");
         
         try (PrintWriter out = response.getWriter()) {
             out.print(JSON);
            
        } 
         
         
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
