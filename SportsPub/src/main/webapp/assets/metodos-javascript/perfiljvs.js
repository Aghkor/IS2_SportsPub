
var resultado=document.getElementById("usuario");
var resultadonom=document.getElementById("nombre");
var resultadoape=document.getElementById("apellido");
var resultadoem=document.getElementById("email");
var resultadocel=document.getElementById("celular");
var resultadoed = document.getElementById("edad");
var resultadogen = document.getElementById("genero");

function llevardatos(){
    var xhttp;
    if(window.XMLHttpRequest){
        xhttp = new XMLHttpRequest();
        
    }else{
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    console.log("1");
    var xhr = new XMLHttpRequest();
console.log('UNSENT', xhr.readyState); // readyState= 0

xhr.open('GET', '/api', true);
console.log('OPENED', xhr.readyState); // readyState = 1

xhr.onprogress = function () {
    console.log('LOADING', xhr.readyState); // readyState = 3
};

xhr.onload = function () {
    console.log('DONE', xhr.readyState); // readyState = 4
};
    
    
    
    xhttp.onreadystatechange = function(){  
        
        if(xhttp.readyState === 4 && xhttp.status === 200  ){
            
          console.log("2");
          var datos =JSON.parse(xhttp.responseText); 
          console.log(datos);                   
          resultado.innerHTML +=  datos.user;
          resultadonom.innerHTML += datos.nombre;
          resultadoape.innerHTML += datos.apellido;
          resultadoem.innerHTML += datos.correoelectronico;
          resultadocel.innerHTML += datos.celular;   
          
          for(i=0; i<40;i++ ){        
              
          if(datos.edad === i){              
              valor=resultadoed.value(i);
              edad1= resultadoed.innerHTML; 
              edad1 += datos.edad;
              edad1= valor;
              
          }
      }   
      
      if(datos.genero === "masculino"){
          valor = resultadogen.value("mas");
          div1= resultadogen.innerHTML;
          div1 += datos.gen;  
          
          }else if (datos.genero === "femenino"){
           valor = resultadogen.value("fem");
          div1= resultadogen.innerHTML;
          div1 += datos.gen;  
              
          }else if(datos.genero === "mixto"){
              valor = resultadogen.value("mix");
          div1= resultadogen.innerHTML;
          div1 += datos.gen;  
              
          }
          
           
        }else{
            console.log("ERROR");
        }
    };
    xhttp.open("GET", "datosprueba.json", true);
    xhttp.send();
    }
    
  
    

 

