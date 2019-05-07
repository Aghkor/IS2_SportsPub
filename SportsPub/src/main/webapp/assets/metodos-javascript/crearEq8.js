/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.addEventListener("DOMContentLoaded", init, true);

function init(){
    document.querySelector("#cEquip8").addEventListener("click", handlePevent, true);
    
    function handlePevent(e){
       e.preventDefault();
       
       var txtnomeq = document.getElementById("nombreequipo");
       var txtlidereq= document.getElementById("lider_equipo");
       var txtTipoF = document.getElementById("tipo_futbol");
       var txtGen = document.getElementById("genero");
       var txtNjug = document.getElementById("num_jugadores");
       var txtjug1= document.getElementById("int_1");
       var txtjug2= document.getElementById("int_2");
       var txtjug3= document.getElementById("int_3");
       var txtjug4= document.getElementById("int_4");
       var txtjug5= document.getElementById("int_5");
       var txtjug6= document.getElementById("int_6");
       var txtjug7 = document.getElementById("int_7");
       var txtjug8=document.getElementById("int_8");
       var userdata= '{"nombreequipo":'+txtnomeq.value + ',"lider_eq":' + txtlidereq.value + ',"tipo_futbol":' + txtTipoF.value +
                       ',"genero":' + txtGen.txt + ',"num_jugadores":'+ txtNjug.value + ',"jug_1":' +txtjug1.value + 
                       ',"jug_2":'+ txtjug2.value + ',"jug_3":'+ txtjug3.value + ',"jug_4":'+ txtjug4.value + ',"jug_5":' + txtjug5.value + 
                       ',"jug_6":' + txtjug6.value + ',"jug_7":' + txtjug7.value + ',"jug_8":'+ txtjug8.value + '}';
               
        Cequipo8ByAjax(userdata);
       
    }
    
    function Cequipo8ByAjax(data){
        var request = new XMLHttpRequest();
        request.open("post",Servletcrear_equipo8, true);
        request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        request.onreadystatechange = function (){
            //si la respuesta fue exitosa
            if(request.readyState === 4 && request.status === 200){
                var message = request.responseText;
                if(message ===   "Partido correctamente registrado "){
                    alert(message);
                    document.location.href = 'perfilequipo8.jsp';
                }else{
                    
                }alert(message+" intente nuevamente");
                
            }else if(request.readyState === 4 && request.status !== 200){
                var message = request.responseText;
				message = request.responseText;
				alert(request.statusText);
            }
        };
        request.send("encuentrodata=" + data);
    }
    
}
