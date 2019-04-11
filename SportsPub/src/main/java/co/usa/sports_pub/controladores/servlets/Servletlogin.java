/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.controladores.servlets;

import co.usa.sports_pub.modelos.Usuriomanager.Usermanager;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.utils.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static javax.ws.rs.client.Entity.json;

/**
 *
 * @author sgome
 */
public class Servletlogin extends HttpServlet {

	HttpSession misession;
	Usuario u;

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

//		PrintWriter out=response.getWriter();
		String logout = request.getParameter("logout");
		misession = request.getSession();
		if (logout != null && misession.getAttribute("usuario") != null) {
			misession.invalidate();
			response.sendRedirect("/SportsPub/index.jsp");
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

		misession = request.getSession(true);
		Usermanager um = new Usermanager();
        PrintWriter writer = response.getWriter();
		String userJson = request.getParameter("userdata");
		Usuario userj;
		String user;
		String contrasena;
		userj = (Usuario) Utils.fromJson(userJson, Usuario.class);
		user = userj.getUsuario();
		contrasena = userj.getContrasena();
		u = um.getUser(user);
		
		if (u == null) {
			writer.print("Usuario o password incorrectos");
		}else{
		String contrase = u.getContrasena();
		if (contrasena.equals(contrase)) {
			u.setContrasena(null);
			String us = Utils.toJson(u);
			misession.setAttribute("usuario", us);
			misession.setAttribute("user", u.getUsuario());
//			writer.println(Utils.toJson(misession.getAttribute("usuario")));
			//response.sendRedirect("/SportsPub/principal.jsp");
		} else
 {
			writer.print("Usuario o password incorrectos");
		}

	}}

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
