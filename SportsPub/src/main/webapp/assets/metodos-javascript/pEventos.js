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
		
		var txtUbicacion=document.getElementById("ubicacion");
		var txtTipoF = document.getElementById("tipo_futbol");
		var txtfechaevento= document.getElementById("fecha_evento");
                var txthoraini= document.getElementById("hora_ini");
                var txthorafin= document.getElementById("hora_fin");
		var txtNuser = document.getElementById("num_jugadores");
	        var txtGenero = document.getElementById("genero");
		var txtEmax = document.getElementById("edad_max");
		var txtEmin = document.getElementById("edad_min");
		var txtnomEv = document.getElementById("nombre_evento");
                
		var userdata = '{"ubicacion":"' + txtUbicacion.value + '","tipo_de_futbol":"' + txtTipoF.value 
                        + '","fecha_evento":"' + txtfechaevento.value  +'","hora_ini":"' + txthoraini.value + '","hora_fin":"' + txthorafin.value +'","numser":' + txtNuser.value + ',"genero":"' + txtGenero.value + 
                        '","emax":' + txtEmax.value + ',"emin":' + txtEmin.value +',"nomev":"' + txtnomEv.value +'"}';
		PeventByAjax(userdata);
		console.log(userdata);
	}
       
	function PeventByAjax(data) {
		var request = new XMLHttpRequest();
		request.open("post", "publicacionEventos", true);
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.onreadystatechange = function () {
			// si la respuesta fue exitosa
			if (request.readyState === 4 && request.status === 200) {
				var message = request.responseText;
				if (message === "Encuentro registrado correctamente") {
					alert(message);
					document.location.href = 'detalles_evento.jsp';
				} else {
						alert(message+" intente nuevamente");
				}
			}
			// si la respuesta trajo error
			else if (request.readyState === 4 && request.status !== 200) {
				var message = request.responseText;
				message = request.responseText;
				alert(request.statusText);
			}
		};
		request.send("encuentrodata=" + data);
	}
	
	
		
		
	}
	
	
	
	