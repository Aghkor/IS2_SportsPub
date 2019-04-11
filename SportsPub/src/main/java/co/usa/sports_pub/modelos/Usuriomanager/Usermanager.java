/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.modelos.persistence.equipoDAO;
import co.usa.sports_pub.utils.Utils;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.modelos.persistence.userDAO;
import co.usa.sports_pub.modelos.vo.Equipo;
import java.util.List;
import javax.json.Json;

/**
 *
 * @author sgome
 */
public class Usermanager {

	public String insertUser(String json) throws ClassNotFoundException {

		userDAO ud = new userDAO();
		
		Usuario u = (Usuario) Utils.fromJson(json, Usuario.class);
		
		List<Usuario> us = ud.getObject(u);
		List<Usuario> um= ud.getEmail(u);
	
        if (us.isEmpty() && um.isEmpty() ) {
			ud.insertObject(u);
			return "Usaurio registrado correctamente";
		}else if (us.isEmpty()== false || um.isEmpty() == false ) {
			return "Usuario o email ya existente";
		} else{
		     return "error en el registro de usuario intente nuevamente";
		}
	}

	public Usuario getUser(String user) {
		userDAO ud = new userDAO();
		Usuario u = new Usuario();
		u.setUsuario(user);
		List<Usuario> us = ud.getObject(u);
         if (us.isEmpty()) {
			return null;
		}else{
		return us.get(0);}
	}

    public List<Usuario> usuariosDisponibles(){
        userDAO ud=new userDAO();
	Usuario u=new Usuario();
        List<Usuario> listus=ud.disponibles();
        return listus;
    }
    
	public List<Equipo> equiposDisponibles(){
        equipoDAO equi=new equipoDAO();
	Equipo u=new Equipo();
        List<Equipo> listaquipos=equi.equiposdisponibles();
        return listaquipos;
    }
        
        
        public List<Usuario> usuariosDeEquipo(){
           userDAO ud=new userDAO();
           return null;
        }
}
