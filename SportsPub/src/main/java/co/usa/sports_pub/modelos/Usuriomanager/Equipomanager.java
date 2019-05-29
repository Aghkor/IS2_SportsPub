/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.Usuriomanager;

import co.usa.sports_pub.modelos.persistence.equipoDAO;
import co.usa.sports_pub.modelos.persistence.userDAO;
import co.usa.sports_pub.modelos.vo.Equipo;
import co.usa.sports_pub.modelos.vo.Usuario;
import co.usa.sports_pub.modelos.vo.UsuarioEquipo;
import co.usa.sports_pub.modelos.vo.usuarios_equipo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sgome
 */
public class Equipomanager {

    public String setTeam(Equipo e) {
        equipoDAO ed = new equipoDAO();

        boolean tr = ed.insertObject(e);

        if (tr) {
            return "el equipo se ha regitrado correctamente";

        } else {
            return "El equipo ya se encuentra registrado";
        }
    }

    public ArrayList<Integer> searchUserID(usuarios_equipo u) {
        userDAO ud = new userDAO();
        ArrayList<Integer> uID = new ArrayList<>();

        String[] userName = {u.getJug1(), u.getJug2(), u.getJug3(), u.getJug4(), u.getJug5(), u.getJug6(), u.getJug7(), u.getJug8()};

        if (u.getJug6() == null) {

            for (int i = 1; i < 5; i++) {
                List<Usuario> lu = ud.getIDname(userName[i]);
                int id = lu.get(0).getIdu();
                uID.add(id);
            }
        } else {
            for (int i = 1; i < 8; i++) {
                List<Usuario> lu = ud.getIDname(userName[i]);
                int id = lu.get(0).getIdu();
                uID.add(id);
            }

        }

        return uID;
    }

    public boolean registerUserTeam(ArrayList<Integer> a, Equipo b) {
                equipoDAO ed=new equipoDAO();
         for (int i = 0; i < a.size(); i++) {
             Usuario u=new Usuario();
             UsuarioEquipo ue=new UsuarioEquipo();
             u.setIdu(a.get(i));
             ue.setIde(b);
             ue.setIdu(u);
             ed.setTeamUsers(ue);
        }
        
        
        return true;
    }

}
