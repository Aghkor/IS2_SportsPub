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
@Table(name = "equipo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Equipo.findAll", query = "SELECT e FROM Equipo e")
    , @NamedQuery(name = "Equipo.findByIde", query = "SELECT e FROM Equipo e WHERE e.ide = :ide")
    , @NamedQuery(name = "Equipo.findByNombre", query = "SELECT e FROM Equipo e WHERE e.nombre = :nombre")
    , @NamedQuery(name = "Equipo.findByFechaCreacion", query = "SELECT e FROM Equipo e WHERE e.fechaCreacion = :fechaCreacion")
    , @NamedQuery(name = "Equipo.findByLiderEquipo", query = "SELECT e FROM Equipo e WHERE e.liderEquipo = :liderEquipo")
    , @NamedQuery(name = "Equipo.findByTipoFutbol", query = "SELECT e FROM Equipo e WHERE e.tipoFutbol = :tipoFutbol")
    , @NamedQuery(name = "Equipo.findByCantidadDeJugador", query = "SELECT e FROM Equipo e WHERE e.cantidadDeJugador = :cantidadDeJugador")})
public class Equipo implements Serializable {

	

	@Size(max = 2)
    @Column(name = "disponibilidad")
	private String disponibilidad;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ide")
    private Integer ide;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_creacion")
    private int fechaCreacion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 69)
    @Column(name = "lider_equipo")
    private String liderEquipo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "tipo_futbol")
    private String tipoFutbol;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cantidad_de_jugador")
    private int cantidadDeJugador;
    @OneToMany(mappedBy = "ide")
    private Collection<UsuarioEquipo> usuarioEquipoCollection;
    @OneToMany(mappedBy = "ide")
    private Collection<Valorizacionequipo> valorizacionequipoCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ide")
    private Collection<ComentarioEquipo> comentarioEquipoCollection;

    public Equipo() {
    }

    public Equipo(Integer ide) {
        this.ide = ide;
    }

    public Equipo(Integer ide, String nombre, int fechaCreacion, String liderEquipo, String tipoFutbol, int cantidadDeJugador) {
        this.ide = ide;
        this.nombre = nombre;
        this.fechaCreacion = fechaCreacion;
        this.liderEquipo = liderEquipo;
        this.tipoFutbol = tipoFutbol;
        this.cantidadDeJugador = cantidadDeJugador;
    }

    public Integer getIde() {
        return ide;
    }

    public void setIde(Integer ide) {
        this.ide = ide;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(int fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getLiderEquipo() {
        return liderEquipo;
    }

    public void setLiderEquipo(String liderEquipo) {
        this.liderEquipo = liderEquipo;
    }

    public String getTipoFutbol() {
        return tipoFutbol;
    }

    public void setTipoFutbol(String tipoFutbol) {
        this.tipoFutbol = tipoFutbol;
    }

    public int getCantidadDeJugador() {
        return cantidadDeJugador;
    }

    public void setCantidadDeJugador(int cantidadDeJugador) {
        this.cantidadDeJugador = cantidadDeJugador;
    }

    @XmlTransient
    public Collection<UsuarioEquipo> getUsuarioEquipoCollection() {
        return usuarioEquipoCollection;
    }

    public void setUsuarioEquipoCollection(Collection<UsuarioEquipo> usuarioEquipoCollection) {
        this.usuarioEquipoCollection = usuarioEquipoCollection;
    }

    

    @XmlTransient
    public Collection<Valorizacionequipo> getValorizacionequipoCollection() {
        return valorizacionequipoCollection;
    }

    public void setValorizacionequipoCollection(Collection<Valorizacionequipo> valorizacionequipoCollection) {
        this.valorizacionequipoCollection = valorizacionequipoCollection;
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
        hash += (ide != null ? ide.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Equipo)) {
            return false;
        }
        Equipo other = (Equipo) object;
        if ((this.ide == null && other.ide != null) || (this.ide != null && !this.ide.equals(other.ide))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.usa.sports_pub.modelos.vo.Equipo[ ide=" + ide + " ]";
    }

	public String getDisponibilidad() {
		return disponibilidad;
	}

	public void setDisponibilidad(String disponibilidad) {
		this.disponibilidad = disponibilidad;
	}

	
    
}
