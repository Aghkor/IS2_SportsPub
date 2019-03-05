/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.usa.sports_pub.modelo.vo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author sgome
 */
@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u")
	, @NamedQuery(name = "Usuario.findByIdu", query = "SELECT u FROM Usuario u WHERE u.idu = :idu")
	, @NamedQuery(name = "Usuario.findByNombre", query = "SELECT u FROM Usuario u WHERE u.nombre = :nombre")
	, @NamedQuery(name = "Usuario.findByApellido", query = "SELECT u FROM Usuario u WHERE u.apellido = :apellido")
	, @NamedQuery(name = "Usuario.findByEdad", query = "SELECT u FROM Usuario u WHERE u.edad = :edad")
	, @NamedQuery(name = "Usuario.findByGenero", query = "SELECT u FROM Usuario u WHERE u.genero = :genero")
	, @NamedQuery(name = "Usuario.findByEmail", query = "SELECT u FROM Usuario u WHERE u.email = :email")
	, @NamedQuery(name = "Usuario.findByCelular", query = "SELECT u FROM Usuario u WHERE u.celular = :celular")
	, @NamedQuery(name = "Usuario.findByUsuario", query = "SELECT u FROM Usuario u WHERE u.usuario = :usuario")
	, @NamedQuery(name = "Usuario.findByContrase\u00f1a", query = "SELECT u FROM Usuario u WHERE u.contrase\u00f1a = :contrase\u00f1a")})
public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idu")
	private Integer idu;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "nombre")
	private String nombre;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "apellido")
	private String apellido;
	@Basic(optional = false)
    @NotNull
    @Column(name = "edad")
	private int edad;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "genero")
	private String genero;
	// @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "email")
	private String email;
	@Basic(optional = false)
    @NotNull
    @Column(name = "celular")
	private int celular;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "usuario")
	private String usuario;
	@Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "contrase\u00f1a")
	private String contraseña;

	public Usuario() {
	}

	public Usuario(Integer idu) {
		this.idu = idu;
	}

	public Usuario(Integer idu, String nombre, String apellido, int edad, String genero, String email, int celular, String usuario, String contraseña) {
		this.idu = idu;
		this.nombre = nombre;
		this.apellido = apellido;
		this.edad = edad;
		this.genero = genero;
		this.email = email;
		this.celular = celular;
		this.usuario = usuario;
		this.contraseña = contraseña;
	}

	public Integer getIdu() {
		return idu;
	}

	public void setIdu(Integer idu) {
		this.idu = idu;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (idu != null ? idu.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Usuario)) {
			return false;
		}
		Usuario other = (Usuario) object;
		if ((this.idu == null && other.idu != null) || (this.idu != null && !this.idu.equals(other.idu))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "co.usa.sports_pub.modelo.vo.Usuario[ idu=" + idu + " ]";
	}
	
}
