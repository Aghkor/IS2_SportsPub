/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.persistence;

import co.usa.sports_pub.modelos.vo.Encuentro;
import co.usa.sports_pub.modelos.vo.EncuentroEquipo;
import co.usa.sports_pub.modelos.vo.Equipo;
import co.usa.sports_pub.modelos.vo.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author sgome
 */
public class eventsDAO {
	
	public EntityManager en = null;

	public boolean insertObject(Encuentro a) {

		try {
			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			en.persist(a);
			en.getTransaction().commit();
			en.refresh(a);
			en.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}
	
	public boolean insertEventTeam(EncuentroEquipo a) {

		try {
			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			en.persist(a);
			en.getTransaction().commit();
			en.refresh(a);
			en.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}
	
	
	public List<EncuentroEquipo> getEventByTeam() {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<EncuentroEquipo> query = (TypedQuery<EncuentroEquipo>) en.createQuery(
					"SELECT e FROM EncuentroEquipo ", EncuentroEquipo.class);
			
			en.getTransaction().commit();
					
			return query.getResultList();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}finally{
		       
			if (en != null && en.isOpen()) {
				en.close();
			}
		
		}

	}
	
	
}
