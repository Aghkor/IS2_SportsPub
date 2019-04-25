    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.controladores.servlets;

import co.usa.sports_pub.modelos.Usuriomanager.Usermanager;
import co.usa.sports_pub.modelos.vo.Usuario;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fabio
 */
public class Busquedas extends HttpServlet {

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
            out.println("<title>Servlet Busquedas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Busquedas at " + request.getContextPath() + "</h1>");
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
        
        String username = null;
        if (request.getSession().getAttribute("usuario") != null) {
            Usuario u = (Usuario) request.getSession().getAttribute("usuario");
            username = u.getUsuario();
        } else {
            username = null;
        }
                try {

            //usuarios q estan disponibles para jugar y buscar equipos
           Usermanager lista=new Usermanager();
                List<Usuario> usuariosdisp = lista.usuariosDisponibles();
                 Gson gson = new Gson();                    
                    String usuariodisp = gson.toJson(usuariosdisp);
                    String JSON = "{\"disp\": {\"usuario\":\"" + usuariodisp +"\"}}";
                    response.setContentType("text/html;charset=UTF-8");
                    
                //usuarios que pertenecen a un equipo.
                //
                //
                //
                //
                //
                
          try (PrintWriter out = response.getWriter()) {
              
                   
                    out.println(gson.toJson(JSON));
                    return;
                }

            
            

        } catch (IOException ex) {
            Logger.getLogger(Busquedas.class.getName()).log(Level.SEVERE, null, ex);
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
