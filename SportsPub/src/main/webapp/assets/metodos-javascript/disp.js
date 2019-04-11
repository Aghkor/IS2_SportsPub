    document.getElementById("MostrarDatos").addEventListener("click",function(){
            $.post("Busquedas",$(document.forms[0]),function(response){
                
                var lienzo  = document.getElementById("lienzo");                
                var datos = JSON.parse(response); 
                                       
                  lienzo.innerHTML += "<p>jugador"+ datos.disp.usuario + "</p>" ;
                  lienzo.innerHTML += "<p>jugador"+ datos.disp.usuario + "</p>";
                  lienzo.innerHTML += "<p>jugador"+ datos.disp.usuario + "</p>";
                  lienzo.innerHTML += "<p>jugador"+ datos.disp.usuario + "</p>";   
         
              
                
                
                
            });    
        },false);         
          
          
          
          <button class="btn btn-theme " id="MostrarDatos" >Datos</button>