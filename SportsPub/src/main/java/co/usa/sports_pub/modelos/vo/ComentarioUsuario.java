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
@Table(name = "comentario_usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ComentarioUsuario.findAll", query = "SELECT c FROM ComentarioUsuario c")
    , @NamedQuery(name = "ComentarioUsuario.findByIdcu", query = "SELECT c FROM ComentarioUsuario c WHERE c.idcu = :idcu")})
public class ComentarioUsuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcu")
    private Integer idcu;
    @JoinColumn(name = "idc", referencedColumnName = "idc")
    @ManyToOne(optional = false)
    private Comentario idc;

    public ComentarioUsuario() {
    }

    public ComentarioUsuario(Integer idcu) {
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcu != null ? idcu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComentarioUsuario)) {
            return false;
        }
        ComentarioUsuario other = (ComentarioUsuario) object;
        if ((this.idcu == null && other.idcu != null) || (this.idcu != null && !this.idcu.equals(other.idcu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.ComentarioUsuario[ idcu=" + idcu + " ]";
    }
    
}
