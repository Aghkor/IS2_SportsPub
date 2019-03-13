console.log('correcto');

document.querySelector('#boton1').addEventListener('click',datosusuario);


function datosusuario(){
const xhttp = new XMLHttpRequest();
 xhttp.open("GET","datosprueba.json", true);
 xhttp.send(); 
 console.log('correcto2');
 
 xhttp.onreadystatechange = function(){    
     
    if(xhttp.status===200 && xhttp.readyState=== 4){
      
        
        var jsonResponse = xhttp.responseText;
        var objeto_json= JSON.parse(jsonResponse);
        datousuario= objeto_json.datos.usuario.user;       
       
       for(var i=0; i<datosusuario.length;i++){
           var nombreusuario = objeto_json.datos.usuario[i].nombre;
           
           if(nombreusuario !== null){
               document.getElementById("usuario").innerHTML = nombreusuario;
               
               
           }
           
       }
        
       
        
        
    }
        
        
    }
   
    
};



