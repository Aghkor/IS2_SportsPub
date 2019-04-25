/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.modelos.persistence.equipoDAO;
import co.usa.sports_pub.modelos.persistence.eventsDAO;
import co.usa.sports_pub.modelos.persistence.userDAO;
import co.usa.sports_pub.modelos.vo.Encuentro;
import co.usa.sports_pub.modelos.vo.EncuentroEquipo;
import co.usa.sports_pub.modelos.vo.Equipo;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.modelos.vo.UsuarioEquipo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sgome
 */
public class Eventsmanager {


	public String setEvent(Encuentro e) {
            
		eventsDAO se = new eventsDAO();

		boolean verdad = se.insertObject(e);
		if (verdad) {
			return "Encuentro registrado correctamente";
		} else {
			return "Encuentro registrado incorrectamente";
		}

	}
	
	public Encuentro getEvents(int numbre) {

	eventsDAO eu =new eventsDAO();
	userDAO ud=new userDAO();
	
	List<Encuentro> ee=eu.getEvent();
       
           
	return ee.get(numbre);
	}

}
