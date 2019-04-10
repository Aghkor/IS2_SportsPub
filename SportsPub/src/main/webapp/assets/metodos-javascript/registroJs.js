/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.addEventListener("DOMContentLoaded", init, true);
 
function init() {
        document.querySelector("#btn-regis").addEventListener("click", handleLogin, true);
        
        function handleLogin(e) {
                e.preventDefault();
                var txtUsername = document.getElementById("user");
				var txtName = document.getElementById("nombre");
				var txtLastname = document.getElementById("apellido");
                var txtPassword = document.getElementById("contrasena");
				var txtCellphone = document.getElementById("celular");
                var txtAge = document.getElementById("edad");
				var txtGender = document.getElementById("genero");
                var txtEmail = document.getElementById("email");
				
				
                
                var userdata = '{"usuario":'+txtUsername.value+',"contrasena":'+txtPassword.value+',"edad":'+txtAge.value+',"apellido":'+txtLastname.value+',"celular":'+txtCellphone.value+',"genero":'+txtGender.value+',"nombre":'+txtName.value+',"email":'+txtEmail.value+'}';
				
                loginByAjax(userdata);
                //resetForm();
        }
        
        function loginByAjax(data) {
                var request = new XMLHttpRequest();
                request.open("post", "Servletuser", true);
                request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                request.onreadystatechange = function() {
                        // si la respuesta fue exitosa
                        if(request.readyState == 4 && request.status == 200) {
                               var message = request.responseText;
                   if (message == "Usuario o email ya existente") {
					     alert(message);
				    }else{
					     alert(message);
					    document.location.href='index.html';
				}  
                                 
								
                        } 
                        // si la respuesta trajo error
                        else if(request.readyState == 4 && request.status != 200){
                                var message = request.responseText;
                                message = request.responseText;
                                alert(message);
                        }
                };
                request.send("userdata="+data);
        }
        
        function resetForm(form) {
                var form = document.querySelector("#form-login");
                var controls = form.querySelectorAll("input, select");
                
                for(var i=0; i<controls.length; i++) {
                        var control = controls[i];
                        if(control.nodeName === "INPUT")
                                control.value = "";
                        else if(control.nodeName === "SELECT")
                                control.selectedIndex = 0;
                }
                controls[0].focus();
        }
        
}


