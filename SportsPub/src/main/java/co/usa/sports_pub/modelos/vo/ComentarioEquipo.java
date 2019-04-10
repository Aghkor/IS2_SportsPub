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
@Table(name = "comentario_equipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ComentarioEquipo.findAll", query = "SELECT c FROM ComentarioEquipo c")
    , @NamedQuery(name = "ComentarioEquipo.findByIdce", query = "SELECT c FROM ComentarioEquipo c WHERE c.idce = :idce")})
public class ComentarioEquipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idce")
    private Integer idce;
    @JoinColumn(name = "idc", referencedColumnName = "idc")
    @ManyToOne(optional = false)
    private Comentario idc;
    @JoinColumn(name = "ide", referencedColumnName = "ide")
    @ManyToOne(optional = false)
    private Equipo ide;

    public ComentarioEquipo() {
    }

    public ComentarioEquipo(Integer idce) {
        this.idce = idce;
    }

    public Integer getIdce() {
        return idce;
    }

    public void setIdce(Integer idce) {
        this.idce = idce;
    }

    public Comentario getIdc() {
        return idc;
    }

    public void setIdc(Comentario idc) {
        this.idc = idc;
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
        hash += (idce != null ? idce.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComentarioEquipo)) {
            return false;
        }
        ComentarioEquipo other = (ComentarioEquipo) object;
        if ((this.idce == null && other.idce != null) || (this.idce != null && !this.idce.equals(other.idce))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.ComentarioEquipo[ idce=" + idce + " ]";
    }
    
}
