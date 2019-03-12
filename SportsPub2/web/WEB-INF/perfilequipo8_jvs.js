console.log('correcto');
document.querySelector('#contenedor').querySelector('#contenedor2').addEventListener('click',datosequipo);


var json1= 'datos.json';
var conversionjs=JSON().parse(json1);
var div1=document.getElementById('#nombreequipo_1');
var div2=document.getElementById('#lider_equipo');
var div3=document.getElementById('#tipo_futbol');
var div4=document.getElementById('#genero');
var div5=document.getElementById('#num_jugadores');
var div6=document.getElementById('#futbol8_1');
var div7=document.getElementById('#futbol8_2');
var div8=document.getElementById('#futbol8_3');
var div9=document.getElementById('#futbol8_4');
var div10=document.getElementById('#futbol8_5');
var div11=document.getElementById('#futbol8_6');
var div12=document.getElementById('#futbol8_7');
var div113=document.getElementById('#futbol8_8');



function datosequipo(){
  const xhttp= new  XMLHttpRequest();
  xhttp.open('GET',json1, true);
  xhttp.send();
  
  xhttp.onreadystatechange= function(){
      if(this.readyState===4 &&  this.status===200){
          div1.innerHTML=conversionjs.equipofutbol5.nombrequipo.tostring();
          div2.innerHTML=conversionjs.equipofutbol5.liderequipo.toString();
          
          console.log('correcto');
    
    function cambiar(){
        div3.innerHTML=conversionjs.equipofutbol5.tipofutbol.valueOf().toString();
        div4.innerHTML=conversionjs.equipofutbol5.genero.valueOf().toString();   
        console.log('correcto');
       
      
    }
    function datosjugadores(){}
    var numjugadores;
    div5.innerHTML=conversionjs.equipofutbol5.numdejugadores.valueOf().toString();
    numjugadores=parseInt(conversionjs.equipofutbol5.numdejugadores.toString());
    
    if(numjugadores === 8){
        div6.innerHTML=conversionjs.equipofutbol8.integrante1.toString();
        div7.innerHTML=conversionjs.equipofutbol8.integrante2.toString();
        div8.innerHTML=conversionjs.equipofutbol8.integrante3.toString();
        div9.innerHTML=conversionjs.equipofutbol8.integrante4.toString();
        div10.innerHTML=conversionjs.equipofutbol8.integrante5.toString();
        div11.innerHTML=conversionjs.equipofutbol8.integrante6.toString();
        div12.innerHTML=conversionjs.equipofutbol8.integrante7.toString();
        div13.innerHTML=conversionjs.equipofutbol8.integrante8.toString();
        
    }
    
    
    
    
        
        
    }
          
          
          
          
      };
      
  }
