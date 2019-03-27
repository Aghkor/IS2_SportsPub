/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.persistence;

import co.usa.sports_pub.modelos.vo.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author sgome
 */
public class userDAO {

	public EntityManager en = null;

	public boolean insertObject(Usuario a) {

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

	public List<Usuario> getObject(Usuario User) {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Usuario> query = (TypedQuery<Usuario>) en.createQuery(
					"SELECT u FROM Usuario u WHERE u.usuario =:usuario", Usuario.class);
  
			query.setParameter("usuario",User.getUsuario());
			
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
	public List<Usuario> getEmail(Usuario User) {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Usuario> query = (TypedQuery<Usuario>) en.createQuery(
					"SELECT u FROM Usuario u WHERE u.email =:email", Usuario.class);
  
			query.setParameter("email",User.getEmail());
			
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
        
        public List<Usuario> disponibles() {
		try {

			en = EMF.get().createEntityManager();
			en.getTransaction().begin();
			TypedQuery<Usuario> query = (TypedQuery<Usuario>) en.createQuery(
					"SELECT u FROM Usuario u WHERE u.disponibilidad =:si", Usuario.class);
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
