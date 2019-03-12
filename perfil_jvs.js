console.log('correcto');


document.querySelector('#contenedor').addEventListener('click',datosusuario);

var json1= 'datos.json';
var conversionjs= JSON.parse(json1);
var div1= document.getElementById('#usuario');
var div2= document.getElementById('#nombre');
var div3= document.getElementById('#apellido');
var div4= document.getElementById('#email');
var div5= document.getElementById('#celular');
var div6= document.getElementById('#edad');
var div7 = document.getElementById('#genero');



function datosusuario (cambiar) {

  const xhttp= new  XMLHttpRequest();
  xhttp.open('GET',json1, true);
  xhttp.send();

  xhttp.onreadystatechange = function () {

    if(this.readyState===4 && this.status===200){
     
      div1.innerHTML=conversionjs.persona.usuario.toString();
      div2.innerHTML=conversionjs.persona.nombre.toString();
      div3.innerHTML=conversionjs.persona.apellido.toString();
      div4.innerHTML=conversionjs.persona.email.toString();
      div5.innerHTML=conversionjs.persona.celular.toString();    
      
      console.log('correcto2');
      
      function cambiar(){        
          div6.innerHTML=conversionjs.persona.edad.valueOf().toString();
          div7.innerHTML=conversionjs.persona.genero.valueOf().toString();  
          
          console.log('correcto3');
          
      }
      
    }  
    
  };
  
  
}


