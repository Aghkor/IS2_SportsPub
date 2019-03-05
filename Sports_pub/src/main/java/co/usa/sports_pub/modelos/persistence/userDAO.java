/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.persistence;



import co.usa.sports_pub.modelo.vo.Usuario;
import javax.persistence.EntityManager;

/**
 *
 * @author sgome
 */
public class userDAO {
	
	public EntityManager en=null;
	
	public boolean insertObject(Usuario a){
	
		try {
			en=EMF.get().createEntityManager();
			en.getTransaction().begin();
			en.persist(a);
			en.getTransaction().commit();
			en.refresh(a);
			en.close();
		    return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally{
		   if (en!= null && en.isOpen()) {
				en.close();
			}
		}
	}
	
	
	
}
