/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//document.addEventListener("DOMContentLoaded", init, true);
//
//function init() {
//   
//	 document.addEventListener("load", handleLoged, true);
//	
//	function handleLoged(e) {
//
//		var request = new XMLHttpRequest();
//		request.open("post", "pagina_inicio", true);
//		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//		request.onreadystatechange = function () {
//			// si la respuesta fue exitosa
//			if (request.readyState == 4 && request.status == 200) {
//				var message = request.responseText;
//				logedByAjax(message);
//				if (message == "por favor inciar sesion de nuevo") {
//					alert(message);
//					document.location.href = 'index.html';
//				}
//			} else if (request.readyState == 4 && request.status == 200) {
//				alert(message);
//				document.location.href = 'index.html';
//			}
//		}
//
//	}
//
//	function logedByAjax(data) {
//		var datax = JSON.parse(data);
//		alert(datax.usuario);
//       document.getElementById("user").innerHTML =datax.usuario;
//
//	}
//
//
//
//}

