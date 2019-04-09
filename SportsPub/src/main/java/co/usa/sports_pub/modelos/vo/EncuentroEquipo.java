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
@Table(name = "encuentro_equipo")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "EncuentroEquipo.findAll", query = "SELECT e FROM EncuentroEquipo e")
	, @NamedQuery(name = "EncuentroEquipo.findByIdeu", query = "SELECT e FROM EncuentroEquipo e WHERE e.ideu = :ideu")})
public class EncuentroEquipo implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ideu")
	private Integer ideu;
	@JoinColumn(name = "idp", referencedColumnName = "idp")
    @ManyToOne
	private Encuentro idp;
	@JoinColumn(name = "ide", referencedColumnName = "ide")
    @ManyToOne
	private Equipo ide;

	public EncuentroEquipo() {
	}

	public EncuentroEquipo(Integer ideu) {
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

	public Equipo getIde() {
		return ide;
	}

	public void setIde(Equipo ide) {
		this.ide = ide;
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
		if (!(object instanceof EncuentroEquipo)) {
			return false;
		}
		EncuentroEquipo other = (EncuentroEquipo) object;
		if ((this.ideu == null && other.ideu != null) || (this.ideu != null && !this.ideu.equals(other.ideu))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "co.usa.sports_pub.modelos.vo.EncuentroEquipo[ ideu=" + ideu + " ]";
	}
	
}
