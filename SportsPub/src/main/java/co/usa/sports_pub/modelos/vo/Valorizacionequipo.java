/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.vo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Fabio
 */
@Entity
@Table(name = "valorizacionequipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Valorizacionequipo.findAll", query = "SELECT v FROM Valorizacionequipo v")
    , @NamedQuery(name = "Valorizacionequipo.findByIdve", query = "SELECT v FROM Valorizacionequipo v WHERE v.idve = :idve")
    , @NamedQuery(name = "Valorizacionequipo.findByValorizacion", query = "SELECT v FROM Valorizacionequipo v WHERE v.valorizacion = :valorizacion")})
public class Valorizacionequipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idve")
    private Integer idve;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "valorizacion")
    private String valorizacion;
    @JoinColumn(name = "ide", referencedColumnName = "ide")
    @ManyToOne
    private Equipo ide;

    public Valorizacionequipo() {
    }

    public Valorizacionequipo(Integer idve) {
        this.idve = idve;
    }

    public Valorizacionequipo(Integer idve, String valorizacion) {
        this.idve = idve;
        this.valorizacion = valorizacion;
    }

    public Integer getIdve() {
        return idve;
    }

    public void setIdve(Integer idve) {
        this.idve = idve;
    }

    public String getValorizacion() {
        return valorizacion;
    }

    public void setValorizacion(String valorizacion) {
        this.valorizacion = valorizacion;
    }

    public Equipo getIde() {
        return ide;
    }

    public void setIde(Equipo ide) {
        this.ide = ide;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idve != null ? idve.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Valorizacionequipo)) {
            return false;
        }
        Valorizacionequipo other = (Valorizacionequipo) object;
        if ((this.idve == null && other.idve != null) || (this.idve != null && !this.idve.equals(other.idve))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Valorizacionequipo[ idve=" + idve + " ]";
    }
    
}
