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
@Table(name = "valorizacionpartido")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Valorizacionpartido.findAll", query = "SELECT v FROM Valorizacionpartido v")
    , @NamedQuery(name = "Valorizacionpartido.findByIdvp", query = "SELECT v FROM Valorizacionpartido v WHERE v.idvp = :idvp")
    , @NamedQuery(name = "Valorizacionpartido.findByValorizacion", query = "SELECT v FROM Valorizacionpartido v WHERE v.valorizacion = :valorizacion")})
public class Valorizacionpartido implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idvp")
    private Integer idvp;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "valorizacion")
    private String valorizacion;
    @JoinColumn(name = "idp", referencedColumnName = "idp")
    @ManyToOne
    private Encuentro idp;

    public Valorizacionpartido() {
    }

    public Valorizacionpartido(Integer idvp) {
        this.idvp = idvp;
    }

    public Valorizacionpartido(Integer idvp, String valorizacion) {
        this.idvp = idvp;
        this.valorizacion = valorizacion;
    }

    public Integer getIdvp() {
        return idvp;
    }

    public void setIdvp(Integer idvp) {
        this.idvp = idvp;
    }

    public String getValorizacion() {
        return valorizacion;
    }

    public void setValorizacion(String valorizacion) {
        this.valorizacion = valorizacion;
    }

    public Encuentro getIdp() {
        return idp;
    }

    public void setIdp(Encuentro idp) {
        this.idp = idp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idvp != null ? idvp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Valorizacionpartido)) {
            return false;
        }
        Valorizacionpartido other = (Valorizacionpartido) object;
        if ((this.idvp == null && other.idvp != null) || (this.idvp != null && !this.idvp.equals(other.idvp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Valorizacionpartido[ idvp=" + idvp + " ]";
    }
    
}
