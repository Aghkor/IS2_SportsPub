/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.modelos.persistence.equipoDAO;
import co.usa.sports_pub.modelos.vo.Equipo;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.modelos.vo.UsuarioEquipo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sgome
 */
public class Equipomanager {
	
	
	
//	public String setTeam(Equipo e){
//		equipoDAO ed=new equipoDAO();
//		
//		
//		List<Equipo> en=ed.getTeamsByName(e.getNombre());
//		
//		
//		if (en.isEmpty()) {
//		ed.insertObject(e);
//		return "el equipo se ha regitrado correctamente";
//		
//		}else{
//		
//		
//		return "El equipo ya se encuentra registrado";
//		}
//	}
	
	public ArrayList<Usuario> getUserOfTeam(Equipo e,Usuario u){
	
		
		equipoDAO ed=new equipoDAO();
		
		//List<UsuarioEquipo> ue=ed.getUserOfTeam();
		
		
		
		
		
	return null;
	}
	
	
	
}
