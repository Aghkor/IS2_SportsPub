/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.service;

import co.usa.sports_pub.modelos.vo.Usuario;
import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class busqueda {
    

    public ArrayList disponibles(Usuario a[]) {

        ArrayList<Usuario> res = new ArrayList();

        for (int i = 0; i < 10; i++) {
            String disp = a[i].getDisponibilidad();
            if (disp.equals("si")) {
                res.add(a[i]);
            }
        }

        return res;
    }
}
