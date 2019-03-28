console.log('Perfil js')
var myobj, myJSON, text, obj; 


myobj={usuario:"cehd1317", nombre:"Camilo", apellido:"Hernandez",email:"camilohd12@gmail.com",celular:3103141858,edad:21, genero:"masculino"};
myJSON=JSON.stringify(myobj);
console.log(myobj.usuario);

localStorage.setItem("testJSON", myJSON);
text = localStorage.getItem("testJSON");

obj=JSON.parse(text);
document.getElementById("usuario").innerHTML=obj.usuario;
obj=JSON.parse(text);
document.getElementById("nombre").innerHTML=obj.nombre;
obj=JSON.parse(text);
document.getElementById("apellido").innerHTML=obj.apellido;
obj=JSON.parse(text);
document.getElementById("email").innerHTML=obj.email;
obj=JSON.parse(text);
document.getElementById("celular").innerHTML=obj.celular;
obj=JSON.parse(text);
document.getElementById("genero").innerHTML=obj.genero;
obj=JSON.parse(text);
document.getElementById("edad2").innerHTML=obj.edad;