/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.utils.Utils;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.modelos.persistence.userDAO;
import java.util.List;


/**
 *
 * @author sgome
 */
public class Usermanager {
	
	
	public String insertUser(String nombre,String apellido,String email,String contrasena,String edad,String usuario,String genero,String celular){
	
	int edada=Integer.parseInt(edad);
	
	userDAO ud=new userDAO();
	Usuario u=new Usuario();
	u.setNombre(nombre);
	u.setApellido(apellido);
	u.setEmail(email);
	u.setContrasena(contrasena);
	u.setEdad(edada);
	u.setGenero(genero);
	u.setUsuario(usuario);
	u.setCelular(celular);
	
		ud.insertObject(u);
	return Utils.toJson(u);
	
	}
	
	
	public Usuario getUser(String user){
	
	
		userDAO ud=new userDAO();
		Usuario u=new Usuario();
		u.setUsuario(user);
		List<Usuario> us=ud.getObject(u);
	
	return us.get(0);
	}
        
    public List<Usuario> disponibles(){
        userDAO ud=new userDAO();
	Usuario u=new Usuario();
        List<Usuario> listus=ud.disponibles();
        return listus;
    }
	
}
