
package co.usa.sports_pub.modelos.persistence;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public final class EMF {
	
	
	private static final EntityManagerFactory emfInstance = Persistence.createEntityManagerFactory("co.SportsPub_war_1.0-SNAPSHOTPU");
			
	private EMF(){};
	
	public static EntityManagerFactory get(){
	
	return emfInstance;
	}
}
