/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.utils.Utils;
import co.usa.sports_pub.modelo.vo.Usuario;
import co.usa.sports_pub.modelos.persistence.userDAO;


/**
 *
 * @author sgome
 */
public class Usermanager {
	
	
	public String insertUser(){
	
	//int edada=Integer.parseInt(edad);
		
	userDAO ud=new userDAO();
	Usuario u=new Usuario();
	u.setIdu(1);
	u.setNombre("Santiago");
	u.setApellido("Gomez");
	u.setEmail("sgomez9411@gmail.com");
	u.setContraseña("123456");
	u.setEdad(24);
	u.setCelular(31);
	u.setGenero("masculino");
	u.setUsuario("aghkor");
	
		ud.insertObject(u);
	return Utils.toJson(u);
	
	}
	
}
