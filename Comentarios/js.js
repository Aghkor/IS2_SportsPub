var tabla=[
	
];
window.onload =cargarEvento;
function cargarEvento(){
	document.getElementById("nuevo-comentario").addEventListener("submit", nuevoComentario , false);
}
function nuevoComentario(event){
	event.preventDefault();
	var Nombres=document.getElementById("Nombre").value;
	var Comentarios=document.getElementById("Comentario").value;
	var NuevoComentario={ nombre: Nombres , comentario: Comentarios };
	tabla.push(NuevoComentario);
	var cuerpoTabla=document.getElementById("fila-tabla");
	var tablaLlena=" ";
	for (var i = 0; i < tabla.length; i++) {
		tablaLlena+="<tr><td>"+tabla[i].nombre +"</td><td>"+tabla[i].comentario + "</td></tr>";
	}
    cuerpoTabla.innerHTML=tablaLlena;
}