      function obtenerDatos(){
         $.ajax({
             type: "POST",
             url: "datosprueba.json",
             async:"true",
             cache: "false",
             dataType: "JSON",
             success: function(resp){
                 alert(resp);
                 var json = JSON.stringify(resp);
                 alert(json);
                 console.log(json);
                 text = localStorage.getItem("testJSON");
                 
                 

                     
                 
                 
                 
             }
             
             
         });
     }
  
  
 

    





