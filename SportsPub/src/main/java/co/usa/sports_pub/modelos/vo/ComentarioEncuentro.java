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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Fabio
 */
@Entity
@Table(name = "comentario_encuentro")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ComentarioEncuentro.findAll", query = "SELECT c FROM ComentarioEncuentro c")
    , @NamedQuery(name = "ComentarioEncuentro.findByIdcu", query = "SELECT c FROM ComentarioEncuentro c WHERE c.idcu = :idcu")})
public class ComentarioEncuentro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcu")
    private Integer idcu;
    @JoinColumn(name = "idc", referencedColumnName = "idc")
    @ManyToOne(optional = false)
    private Comentario idc;
    @JoinColumn(name = "idp", referencedColumnName = "idp")
    @ManyToOne(optional = false)
    private Encuentro idp;

    public ComentarioEncuentro() {
    }

    public ComentarioEncuentro(Integer idcu) {
        this.idcu = idcu;
    }

    public Integer getIdcu() {
        return idcu;
    }

    public void setIdcu(Integer idcu) {
        this.idcu = idcu;
    }

    public Comentario getIdc() {
        return idc;
    }

    public void setIdc(Comentario idc) {
        this.idc = idc;
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
        hash += (idcu != null ? idcu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComentarioEncuentro)) {
            return false;
        }
        ComentarioEncuentro other = (ComentarioEncuentro) object;
        if ((this.idcu == null && other.idcu != null) || (this.idcu != null && !this.idcu.equals(other.idcu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.ComentarioEncuentro[ idcu=" + idcu + " ]";
    }
    
}
