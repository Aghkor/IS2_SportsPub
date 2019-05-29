
document.addEventListener("DOMContentLoaded", init, true);

function init(){
    document.querySelector("#cEquip8").addEventListener("click", handlePevent, true);
    document.querySelector("#cEquip5").addEventListener("click", handlePevent, true);
    
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
       var regequipo= '{"nombre":'+txtnomeq.value + ',"lider_equipo":' + txtlidereq.value + ',"tipo_futbol":' + txtTipoF.value +
                       ',"genero":' + txtGen.txt + ',"num_jugadores":'+ txtNjug.value + '}';
               
       var equipojug= '{"jug1":' +txtjug1.value + ',"jug2":'+ txtjug2.value + ',"jug3":'+ txtjug3.value + ',"jug4":'+ txtjug4.value + ',"jug5":' + txtjug5.value + 
                        ',"jug6":' + txtjug6.value + ',"jug7":' + txtjug7.value + ',"jug8":'+ txtjug8.value + '}';
               
       
               
        CequipoByAjax(regequipo);
        CequipoByAjax(equipojug);
       
    }
    
    function CequipoByAjax(data1,data2){
        var request = new XMLHttpRequest();
        request.open("post","Servletequipo", true);
        request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        request.onreadystatechange = function (){
            //si la respuesta fue exitosa
            if(request.readyState === 4 && request.status === 200){
                var message = request.responseText;
                if(message ===   "Equipo  correctamente registrado "){
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
        request.send("equipodata=" + data1);
        request.send("jData =" + data2);
    }
    
}
