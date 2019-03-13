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
@Table(name = "usuario_equipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsuarioEquipo.findAll", query = "SELECT u FROM UsuarioEquipo u")
    , @NamedQuery(name = "UsuarioEquipo.findByIdue", query = "SELECT u FROM UsuarioEquipo u WHERE u.idue = :idue")})
public class UsuarioEquipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idue")
    private Integer idue;
    @JoinColumn(name = "ide", referencedColumnName = "ide")
    @ManyToOne
    private Equipo ide;

    public UsuarioEquipo() {
    }

    public UsuarioEquipo(Integer idue) {
        this.idue = idue;
    }

    public Integer getIdue() {
        return idue;
    }

    public void setIdue(Integer idue) {
        this.idue = idue;
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
        hash += (idue != null ? idue.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuarioEquipo)) {
            return false;
        }
        UsuarioEquipo other = (UsuarioEquipo) object;
        if ((this.idue == null && other.idue != null) || (this.idue != null && !this.idue.equals(other.idue))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.UsuarioEquipo[ idue=" + idue + " ]";
    }
    
}
