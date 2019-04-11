/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.persistence;

import co.usa.sports_pub.modelos.vo.Equipo;
import co.usa.sports_pub.modelos.vo.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author sgome
 */
public class equipoDAO {
	
	public EntityManager en = null;
	
	public boolean insertObject(Equipo a) {

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
        public List<Equipo> getObject(Equipo equipo) {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Equipo> query = (TypedQuery<Equipo>) en.createQuery(
					"SELECT u FROM Equipo u WHERE u.equipo =:equipo", Equipo.class);
  
			query.setParameter("equipo",equipo.getNombre());
			
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
	public List<Equipo> getLider(Equipo equipo) {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Equipo> query = (TypedQuery<Equipo>) en.createQuery(
					"SELECT u FROM Equipo u WHERE u.LiderEquipo =:LiderEquipo", Equipo.class);
  
			query.setParameter("LiderEquipo",equipo.getLiderEquipo());
			
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
        
        public List<Equipo> equiposdisponibles() {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Equipo> query = (TypedQuery<Equipo>) en.createQuery(
					"SELECT u FROM Equipo u WHERE u.disponibilidad =:si", Equipo.class);
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
	public List<Equipo> getID(String name) {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Equipo> query = (TypedQuery<Equipo>) en.createQuery(
					"SELECT e FROM Equipo e WHERE e.nombre = :nombre", Equipo.class);
  
			query.setParameter("nombre",name);
			
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
