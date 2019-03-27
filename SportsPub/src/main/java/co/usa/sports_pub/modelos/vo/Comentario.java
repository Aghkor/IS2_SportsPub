/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelos.vo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Fabio
 */
@Entity
@Table(name = "comentario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Comentario.findAll", query = "SELECT c FROM Comentario c")
    , @NamedQuery(name = "Comentario.findByIdc", query = "SELECT c FROM Comentario c WHERE c.idc = :idc")
    , @NamedQuery(name = "Comentario.findByComentarios", query = "SELECT c FROM Comentario c WHERE c.comentarios = :comentarios")})
public class Comentario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idc")
    private Integer idc;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "comentarios")
    private String comentarios;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idc")
    private Collection<ComentarioEncuentro> comentarioEncuentroCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idc")
    private Collection<ComentarioUsuario> comentarioUsuarioCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idc")
    private Collection<ComentarioEquipo> comentarioEquipoCollection;

    public Comentario() {
    }

    public Comentario(Integer idc) {
        this.idc = idc;
    }

    public Comentario(Integer idc, String comentarios) {
        this.idc = idc;
        this.comentarios = comentarios;
    }

    public Integer getIdc() {
        return idc;
    }

    public void setIdc(Integer idc) {
        this.idc = idc;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    @XmlTransient
    public Collection<ComentarioEncuentro> getComentarioEncuentroCollection() {
        return comentarioEncuentroCollection;
    }

    public void setComentarioEncuentroCollection(Collection<ComentarioEncuentro> comentarioEncuentroCollection) {
        this.comentarioEncuentroCollection = comentarioEncuentroCollection;
    }

    @XmlTransient
    public Collection<ComentarioUsuario> getComentarioUsuarioCollection() {
        return comentarioUsuarioCollection;
    }

    public void setComentarioUsuarioCollection(Collection<ComentarioUsuario> comentarioUsuarioCollection) {
        this.comentarioUsuarioCollection = comentarioUsuarioCollection;
    }

    @XmlTransient
    public Collection<ComentarioEquipo> getComentarioEquipoCollection() {
        return comentarioEquipoCollection;
    }

    public void setComentarioEquipoCollection(Collection<ComentarioEquipo> comentarioEquipoCollection) {
        this.comentarioEquipoCollection = comentarioEquipoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idc != null ? idc.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comentario)) {
            return false;
        }
        Comentario other = (Comentario) object;
        if ((this.idc == null && other.idc != null) || (this.idc != null && !this.idc.equals(other.idc))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Comentario[ idc=" + idc + " ]";
    }
    
}
