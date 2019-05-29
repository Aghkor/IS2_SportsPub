/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.addEventListener("DOMContentLoaded", init, true);

function init() {
	document.querySelector("#pEvent").addEventListener("click", handlePevent, true);

	function handlePevent(e) {
		e.preventDefault();
		var txtEquipo1 = document.getElementById("nombre_equipo1");
		var txtEquipo2 = document.getElementById("nombre_equipo2");
		var txtUbicacion=document.getElementById("ubicacion");
		var txtTipoF = document.getElementById("tipo_futbol");
		var txtTiempoespera = document.getElementById("tiempo_espera");
		var txtNuser = document.getElementById("num_jugadores");
	    var txtGenero = document.getElementById("genero");
		var txtEmax = document.getElementById("edad_max");
		var txtEmin = document.getElementById("edad_min");
		var txtCondiciones=txtNuser.value+","+txtGenero.value+","+txtEmax.value+","+","+txtEmin.value;
		var userdata = '{"equipo1":' + txtEquipo1.value + '"equipo2":' + txtEquipo2.value + '"ubicacion":' + txtUbicacion.value  +',"tipoDeFutbol":' + txtTipoF.value + ',"tiempoEspera":' + txtTiempoespera.value + ',"condiciones":' + txtCondiciones.value + '}';
		PeventByAjax(userdata);
		
	}

	function PeventByAjax(data) {
		var request = new XMLHttpRequest();
		request.open("post", "publicacionEventos", true);
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.onreadystatechange = function () {
			// si la respuesta fue exitosa
			if (request.readyState == 4 && request.status == 200) {
				var message = request.responseText;
				if (message == "Encuentro registrado correctamente") {
					alert(message);
					document.location.href = 'principal.jsp';
				} else {
						alert(message+" intente nuevamente");
				}
			}
			// si la respuesta trajo error
			else if (request.readyState == 4 && request.status != 200) {
				var message = request.responseText;
				message = request.responseText;
				alert(request.statusText);
			}
		};
		request.send("encuentrodata=" + data);
	}
	
	
		
		
	}
	
	
	
	
	
