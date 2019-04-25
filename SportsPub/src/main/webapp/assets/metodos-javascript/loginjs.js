/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.addEventListener("DOMContentLoaded", init, true);

function init() {
	document.querySelector("#btn-login").addEventListener("click", handleLogin, true);

	function handleLogin(e) {
		e.preventDefault();
		var txtUsername = document.getElementById("user");
		var txtPassword = document.getElementById("contrasena");


		var userdata = '{"usuario":' + txtUsername.value + ',"contrasena":' + txtPassword.value + '}';
               
		loginByAjax(userdata);
                
		//resetForm();
	}

	function loginByAjax(data) {
		var request = new XMLHttpRequest();
		request.open("post", "Servletlogin", true);
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.onreadystatechange = function () {
			// si la respuesta fue exitosa
			if (request.readyState == 4 && request.status == 200) {
				var message = request.responseText;
				if (message == "Usuario o password incorrectos") {
					alert(message);
				} else {
                                  
					document.location.href = 'principal.jsp';
				}
			}
			// si la respuesta trajo error
			else if (request.readyState == 4 && request.status != 200) {
				var message = request.responseText;
				message = request.responseText;
				alert(message);
			}
		};
		request.send("userdata=" + data);
	}

	function resetForm(form) {
		var form = document.querySelector("#form-login");
		var controls = form.querySelectorAll("input, select");

		for (var i = 0; i < controls.length; i++) {
			var control = controls[i];
			if (control.nodeName === "INPUT")
				control.value = "";
			else if (control.nodeName === "SELECT")
				control.selectedIndex = 0;
		}
		controls[0].focus();
	}

}

