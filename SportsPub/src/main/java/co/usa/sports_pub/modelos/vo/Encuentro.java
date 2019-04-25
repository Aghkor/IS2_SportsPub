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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "encuentro")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Encuentro.findAll", query = "SELECT e FROM Encuentro e")
    , @NamedQuery(name = "Encuentro.findByIdp", query = "SELECT e FROM Encuentro e WHERE e.idp = :idp")
    , @NamedQuery(name = "Encuentro.findByUbicacion", query = "SELECT e FROM Encuentro e WHERE e.ubicacion = :ubicacion")
    , @NamedQuery(name = "Encuentro.findByTipoDeFutbol", query = "SELECT e FROM Encuentro e WHERE e.tipoDeFutbol = :tipoDeFutbol")
    })
public class Encuentro implements Serializable {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idp")
    private Collection<ComentarioEncuentro> comentarioEncuentroCollection;
    @OneToMany(mappedBy = "idp")
    private Collection<EncuentroEquipo> encuentroEquipoCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idp")
    private Collection<EncuentroUsuario> encuentroUsuarioCollection;
    @OneToMany(mappedBy = "idp")
    private Collection<Valorizacionpartido> valorizacionpartidoCollection;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "hora_fin")
    private String horaFin;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "hora_ini")
    private String horaIni;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "fecha_evento")
    private String fechaEvento;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "emax")
    private String emax;
    @Column(name = "emin")
    private Integer emin;
    @Size(max = 50)
    @Column(name = "nomev")
    private String nomev;
    @Size(max = 50)
    @Column(name = "genero")
    private String genero;
    @Column(name = "numser")
    private Integer numser;

	



    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idp")
    private Integer idp;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ubicacion")
    private String ubicacion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 69)
    @Column(name = "tipo_de_futbol")
    private String tipoDeFutbol;
    
	
	

    public Encuentro() {
    }

    public Encuentro(Integer idp) {
        this.idp = idp;
    }

    public Encuentro(Integer idp, String ubicacion, String tipoDeFutbol) {
        this.idp = idp;
        this.ubicacion = ubicacion;
        this.tipoDeFutbol = tipoDeFutbol;
       
    }

    public Integer getIdp() {
        return idp;
    }

    public void setIdp(Integer idp) {
        this.idp = idp;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getTipoDeFutbol() {
        return tipoDeFutbol;
    }

    public void setTipoDeFutbol(String tipoDeFutbol) {
        this.tipoDeFutbol = tipoDeFutbol;
    }

  

   
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idp != null ? idp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Encuentro)) {
            return false;
        }
        Encuentro other = (Encuentro) object;
        if ((this.idp == null && other.idp != null) || (this.idp != null && !this.idp.equals(other.idp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Encuentro[ idp=" + idp + " ]";
    }


	
    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public String getHoraIni() {
        return horaIni;
    }

    public void setHoraIni(String horaIni) {
        this.horaIni = horaIni;
    }

    public String getFechaEvento() {
        return fechaEvento;
    }

    public void setFechaEvento(String fechaEvento) {
        this.fechaEvento = fechaEvento;
    }

    public String getEmax() {
        return emax;
    }

    public void setEmax(String emax) {
        this.emax = emax;
    }

    public Integer getEmin() {
        return emin;
    }

    public void setEmin(Integer emin) {
        this.emin = emin;
    }

    public String getNomev() {
        return nomev;
    }

    public void setNomev(String nomev) {
        this.nomev = nomev;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Integer getNumser() {
        return numser;
    }

    public void setNumser(Integer numser) {
        this.numser = numser;
    }

    @XmlTransient
    public Collection<ComentarioEncuentro> getComentarioEncuentroCollection() {
        return comentarioEncuentroCollection;
    }

    public void setComentarioEncuentroCollection(Collection<ComentarioEncuentro> comentarioEncuentroCollection) {
        this.comentarioEncuentroCollection = comentarioEncuentroCollection;
    }

    @XmlTransient
    public Collection<EncuentroEquipo> getEncuentroEquipoCollection() {
        return encuentroEquipoCollection;
    }

    public void setEncuentroEquipoCollection(Collection<EncuentroEquipo> encuentroEquipoCollection) {
        this.encuentroEquipoCollection = encuentroEquipoCollection;
    }

    @XmlTransient
    public Collection<EncuentroUsuario> getEncuentroUsuarioCollection() {
        return encuentroUsuarioCollection;
    }

    public void setEncuentroUsuarioCollection(Collection<EncuentroUsuario> encuentroUsuarioCollection) {
        this.encuentroUsuarioCollection = encuentroUsuarioCollection;
    }

    @XmlTransient
    public Collection<Valorizacionpartido> getValorizacionpartidoCollection() {
        return valorizacionpartidoCollection;
    }

    public void setValorizacionpartidoCollection(Collection<Valorizacionpartido> valorizacionpartidoCollection) {
        this.valorizacionpartidoCollection = valorizacionpartidoCollection;
    }
    
}
