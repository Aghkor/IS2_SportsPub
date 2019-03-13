console.log('correcto');


document.querySelector('#contenedor').addEventListener('click',datosusuario);

var json1= 'datoprueba.json';
//var conversionjs= JSON.parse(json1);
console.log(json1);
var div1 = document.getElementById('usuario').value;
var div2 = document.getElementById('nombre').value;
var div3 = document.getElementById('apellido').value;
var div4 = document.getElementById('email').value;
var div5 = document.getElementById('celular').value;
var div6 = document.getElementById('edad').value;
var div7 = document.getElementById('genero').value;
var div8 = document.getElementById('futbol5').value;
var div9 = document.getElementById('futbol8').value;



function datosusuario () {

  const xhttp= new  XMLHttpRequest();
  xhttp.open('GET',json1, true);
  xhttp.send();
  console.log('correcto 2');

  xhttp.onreadystatechange = function () {

    if(this.readyState===4 && this.status===200){
     
      div1.innerHTML=conversionjs.persona.usuario.toString();
      div2.innerHTML=conversionjs.persona.nombre.toString();
      div3.innerHTML=conversionjs.persona.apellido.toString();
      div4.innerHTML=conversionjs.persona.email.toString();
      div5.innerHTML=conversionjs.persona.celular.toString();    
      div8.innerHTML=conversionjs.equipofutbol5.nombrequipo.tostring();
      div9.innerHTML=conversionjs.equipofutbol8.nombrequipo.tostring();
      
      
      console.log('correcto3');
      
      function cambiar(){        
          div6.innerHTML=conversionjs.persona.edad.valueOf().toString();
          div7.innerHTML=conversionjs.persona.genero.valueOf().toString();            
          console.log('correcto4');
          
      }
      
    }  
    
  };
  
  
}
