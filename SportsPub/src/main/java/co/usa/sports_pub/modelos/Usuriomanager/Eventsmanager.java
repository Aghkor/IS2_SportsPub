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
import java.util.List;

/**
 *
 * @author sgome
 */
public class Eventsmanager {

	public Equipo getEquipo1ByID(Encuentro u) {

		equipoDAO ug = new equipoDAO();

		List<Equipo> us = ug.getID(u.getEquipo1());

		return us.get(0);
	}

	public Equipo getEquipo2ByID(Encuentro u) {

		equipoDAO ug = new equipoDAO();

		List<Equipo> us = ug.getID(u.getEquipo2());

		return us.get(0);
	}

	public String setEvent(Encuentro e) {

		Equipo e1 = getEquipo1ByID(e);
		Equipo e2 = getEquipo2ByID(e);

		e.setIde1(e1);
		e.setIde2(e2);
		
		EncuentroEquipo ee = new EncuentroEquipo();
		EncuentroEquipo ee2=new EncuentroEquipo();
		ee.setIde(e2);
		ee.setIdp(e);
		
		ee2.setIde(e1);
		ee2.setIdp(e);

		eventsDAO se = new eventsDAO();

		boolean verdad = se.insertObject(e);
		boolean falso = se.insertEventTeam(ee);
		boolean pos=se.insertEventTeam(ee2);
		

		if (verdad || falso || pos) {
			return "Encuentro registrado correctamente";
		} else {
			return "Encuentro registrado incorrectamente";
		}

	}
	
	public Encuentro[] getEventsOfuser(Usuario u) {

	eventsDAO eu =new eventsDAO();
	userDAO ud=new userDAO();
	
	List<EncuentroEquipo> ee=eu.getEventByTeam();
	List<UsuarioEquipo> ue= ud.GetUsuarioEquipo();
	
	int iot=ue.indexOf(u);
	Equipo e=ue.get(iot).getIde();
	Encuentro[] en=new Encuentro[ee.size()];
	
		for (int i = 0; i < ee.size(); i++) {
			
			if (ee.get(i).getIde() == e) {
				
			en[i]=ee.get(i).getIdp();
				
			}
			
		}
    return en;
	}

}
