/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.controladores.servlets;

import co.usa.sports_pub.modelos.Usuriomanager.Eventsmanager;
import co.usa.sports_pub.modelos.vo.Encuentro;
import co.usa.sports_pub.utils.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sgome
 */
public class publicacionEventos extends HttpServlet {

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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

            response.setContentType("text/html;charset=UTF-8");
            Eventsmanager eventos=new Eventsmanager();
            Encuentro var=new Encuentro();
            var.setNomev(request.getParameter("nombre_evento"));
            var.setEmin(request.getParameter("edad_min"));
            var.setEmax(request.getParameter("edad_max"));
            var.setGenero(request.getParameter("genero"));
            var.setNumser(request.getParameter("num_jugadores"));
            var.setHoraFin(request.getParameter("hora_fin"));
            var.setHoraIni(request.getParameter("hora_ini"));
            var.setFechaEvento(request.getParameter("fecha_evento"));
            var.setNumser(request.getParameter("tipo_futbol"));
            var.setUbicacion(request.getParameter("ubicacion"));
            PrintWriter writer = response.getWriter();
            String msj = eventos.setEvent(var);
            writer.println(msj);
        }
            
//		PrintWriter writer = response.getWriter();
//		String encuentroJson = request.getParameter("encuentrodata");
//		Encuentro ec1=(Encuentro) Utils.fromJson(encuentroJson, Encuentro.class);
//                
//                
//                
//                HttpSession misession = request.getSession();
//                
//                
//                misession.setAttribute("evento1", ec1);
//             
//		Eventsmanager em = new Eventsmanager();
//		String msj = em.setEvent(ec1);
//		writer.println(msj);

	

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
