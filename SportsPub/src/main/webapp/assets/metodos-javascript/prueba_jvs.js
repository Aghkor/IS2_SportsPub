
function mostrarSugerencia(str) {
 var paisElegido='';
if (str==='spain') {paisElegido='España';}
else if (str==='mexico') {paisElegido='México';}
else if (str==='argentina') {paisElegido='Argentina';}
else if (str==='colombia') {paisElegido='Colombia';}
else {paisElegido='none';}

var xmlhttp;
if (str.length==0 ||paisElegido=='none') { document.getElementById("txtInformacion").innerHTML="no hay datos";
mostrarCiudades();
return;
};
xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
if (xmlhttp.readyState===4 && xmlhttp.status===200) {
    var jsonResponse = xmlhttp.responseText;
    var objeto_json = JSON.parse(jsonResponse);
    paisesRecibidos = objeto_json.listadoPaises.pais;
 
    for (var i=0; i<paisesRecibidos.length;i++) {
    var nombrePais = objeto_json.listadoPaises.pais[i].nombre;
        if (nombrePais===paisElegido) {
        document.getElementById("txtInformacion").innerHTML = 'El pais recibido por get en segundo plano es '+nombrePais+ ' y tiene indice '+i;
        var ciudadesPais = objeto_json.listadoPaises.pais[i].ciudadImportante;
        mostrarCiudades(ciudadesPais);
        }
    }
    
}
};

xmlhttp.open("GET","datosprueba.json' + (new Date()).getTime()");
xmlhttp.send();
}

function mostrarCiudades (arrayCiudades) {
var nodoMostrarResultados = document.getElementById('listaCiudades');
if (!arrayCiudades) {nodoMostrarResultados.innerHTML = ''; 
    return}
var contenidosAMostrar = '';
for (var i=0; i<arrayCiudades.length;i++) {
    contenidosAMostrar = contenidosAMostrar+'<div id="ciudades'+i+'">';
    contenidosAMostrar += '<a href="http://aprenderaprogramar.com">' + arrayCiudades[i]+ '</a></div>';
}
if (contenidosAMostrar) {nodoMostrarResultados.innerHTML = contenidosAMostrar;}
}
 
 