document.addEventListener("DOMContentLoaded", init, true);
function init() {
	document.querySelector("#btn-cosulta").addEventListener("click", handleLogin, true);

	function handleComentario(e) {
		e.preventDefault();
		var txtComentario = document.getElementById("estrellas");


		var userdata = '{"comentarios":' + txtComentario.value + '}';
		loginByAjax(userdata);
		//resetForm();
	}

	function ComentarioByAjax(data) {
		var request = new XMLHttpRequest();
		request.open("post", "SevletCalificacion", true);
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.onreadystatechange = function () {
		
		request.send("userdata=" + data);
	}

	function resetForm(form) {
		var form = document.querySelector("#form-consulta");
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
}
