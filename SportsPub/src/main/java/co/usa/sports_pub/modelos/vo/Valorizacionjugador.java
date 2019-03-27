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
@Table(name = "valorizacionjugador")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Valorizacionjugador.findAll", query = "SELECT v FROM Valorizacionjugador v")
    , @NamedQuery(name = "Valorizacionjugador.findByIdvj", query = "SELECT v FROM Valorizacionjugador v WHERE v.idvj = :idvj")
    , @NamedQuery(name = "Valorizacionjugador.findByValorizacion", query = "SELECT v FROM Valorizacionjugador v WHERE v.valorizacion = :valorizacion")})
public class Valorizacionjugador implements Serializable {

	@JoinColumn(name = "idu", referencedColumnName = "idu")
    @ManyToOne(optional = false)
	private Usuario idu;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idvj")
    private Integer idvj;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "valorizacion")
    private String valorizacion;

    public Valorizacionjugador() {
    }

    public Valorizacionjugador(Integer idvj) {
        this.idvj = idvj;
    }

    public Valorizacionjugador(Integer idvj, String valorizacion) {
        this.idvj = idvj;
        this.valorizacion = valorizacion;
    }

    public Integer getIdvj() {
        return idvj;
    }

    public void setIdvj(Integer idvj) {
        this.idvj = idvj;
    }

    public String getValorizacion() {
        return valorizacion;
    }

    public void setValorizacion(String valorizacion) {
        this.valorizacion = valorizacion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idvj != null ? idvj.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Valorizacionjugador)) {
            return false;
        }
        Valorizacionjugador other = (Valorizacionjugador) object;
        if ((this.idvj == null && other.idvj != null) || (this.idvj != null && !this.idvj.equals(other.idvj))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Valorizacionjugador[ idvj=" + idvj + " ]";
    }

	public Usuario getIdu() {
		return idu;
	}

	public void setIdu(Usuario idu) {
		this.idu = idu;
	}
    
}
