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
 * @author sgome
 */
@Entity
@Table(name = "encuentro_usuario")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "EncuentroUsuario.findAll", query = "SELECT e FROM EncuentroUsuario e")
	, @NamedQuery(name = "EncuentroUsuario.findByIdeu", query = "SELECT e FROM EncuentroUsuario e WHERE e.ideu = :ideu")})
public class EncuentroUsuario implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ideu")
	private Integer ideu;
	@JoinColumn(name = "idp", referencedColumnName = "idp")
    @ManyToOne(optional = false)
	private Encuentro idp;
	@JoinColumn(name = "idu", referencedColumnName = "idu")
    @ManyToOne(optional = false)
	private Usuario idu;

	public EncuentroUsuario() {
	}

	public EncuentroUsuario(Integer ideu) {
		this.ideu = ideu;
	}

	public Integer getIdeu() {
		return ideu;
	}

	public void setIdeu(Integer ideu) {
		this.ideu = ideu;
	}

	public Encuentro getIdp() {
		return idp;
	}

	public void setIdp(Encuentro idp) {
		this.idp = idp;
	}

	public Usuario getIdu() {
		return idu;
	}

	public void setIdu(Usuario idu) {
		this.idu = idu;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (ideu != null ? ideu.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof EncuentroUsuario)) {
			return false;
		}
		EncuentroUsuario other = (EncuentroUsuario) object;
		if ((this.ideu == null && other.ideu != null) || (this.ideu != null && !this.ideu.equals(other.ideu))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "co.usa.sports_pub.modelos.vo.EncuentroUsuario[ ideu=" + ideu + " ]";
	}
	
}
