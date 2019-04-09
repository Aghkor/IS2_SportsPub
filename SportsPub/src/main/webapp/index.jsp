<%-- 
    Document   : newjsp
    Created on : 2/04/2019, 12:26:05 PM
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Perfil - SportsPub</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   
        	
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
        <!--header start-->
      <header class="header black-bg">
	  <!--logo start-->
            <a href="index.html" class="logo"><b>SportsPub</b></a>
            <!--logo end-->
              <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="inicio.jsp">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="principal.jsp"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered" id="usuario_encabezado"></h5>
              	  	
                  <li class="sub-menu">
                          <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Muro</span>
                      </a>
					  <ul class="sub">
					      <li><a  href="principal.jsp">Inicio</a></li>  
						       
                          <li><a  href="pub_evento.jsp">Publicar evento nuevo</a></li>                          
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Equipo de futbol</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="crear_eqfut5.jsp">Crear equipo de futbol 5</a></li>
						  <li><a  href="crear_eqfut8.jsp">Crear equipo de futbol 8</a></li>
                                       
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-dashboard"></i>
                          <span>Buscar</span>
                      </a>
                      <ul class="sub">
                          
                          <li><a  href="busq_jug.jsp">Buscar jugadores </a></li>
                          <li><a  href="busq_equipo.jsp">Buscar equipos</a></li>
                          <li ><a  href="disp.jsp">Disponibilidad</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Perfiles </span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="perfil_usuario.jsp">Perfil Usuario</a></li>
                          <li><a  href="perfilequipo5.jsp">Perfil Equipo futbol 5 </a></li>
			  <li><a  href="perfilequipo8.jsp">Perfil Equipo futbol 8 </a></li>
                      </ul>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Configuracion </span>
                      </a>
                      <ul class="sub">
                          <li><a  href="config_perfilusuario.jsp">Configurar perfil </a></li>
						  <li><a  href="config_eq5.jsp">configurar equipo futbol 5 </a></li>
						  <li><a  href="config_eq8.jsp">configurar equipo futbol 8 </a></li>
                      </ul>
                  </li>
                </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Perfil Usuario</h3>
          	
          	<!-- DATOS GENERALES -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales </h4>
					  
                       <form class="form-horizontal style-form" method="post">       

                        
					                   <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Usuario </label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="usuario"  disabled></output>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nombre</label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="nombre"   disabled></output>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Apellido </label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="apellido"  disabled></output>
                               </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Correo Electronico </label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="email" t disabled></output>
                              </div>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Celular </label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="celular"  disabled></output>
                              </div>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Edad</label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="edad"  disabled></output>
                              </div>
                          </div>
                           
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Genero</label>
                              <div class="col-sm-10">
                                  <output type="text" class="form-control" id="genero"  disabled></output>
                              </div>
                          </div>

                          
                        
						  
						  
						  
						  

						  
                          <label class="col-sm-2 col-sm-2 control-label">Valorizacion del jugador</label>
						  <div class="valoracion" id="valorizacion" disabled>
                               <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                --><label for="radio1">1</label><!--
                                --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                --><label for="radio2">2</label><!--
                                --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                --><label for="radio3">3</label><!--
                                --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                --><label for="radio4">4</label><!--
                                --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                --><label for="radio5">5</label>
                               </div>

							   </br>
							   
							  
							   
						  
			<button class="btn btn-theme  " type="button"href="config_perfilusuario.jsp">Configuracion del perfil</button>
                        <button class="btn btn-theme  " type="button" id="MostrarDatos" >Mostrar Datos</button>
                        </form>
		          
				  <hr>
                          </div>
     
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	          	
          	<!-- DATOS DE SUS EQUIPOS -->
          	<div class="row mt">
                                           
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> EQUIPOS FUTBOL 5 </h4>
                          <form class="form-horizontal tasi-form" method="post">
                              <div class="form-group ">
                                  <label class="col-sm-2 control-label col-lg-2" >FUTBOL 5 </label>
                                  <div class="col-lg-10">
                                      <output type="text" class="form-control" id="futbol5" disabled></output>
                                  </div>
                              </div>
                                    

			<a class="btn btn-theme btn-block" href="perfilequipo5.jsp" type="button"> Ver perfil equipo 5  </a>
                     
		            <hr>
                          </form>
          		</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div><!-- /row -->
			
			         	<!-- DATOS DE SUS EQUIPOS -->
          	<div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> EQUIPOS FUTBOL 8</h4>
                          <form class="form-horizontal tasi-form" method="post">
                            
                             
							  <div class="form-group">
                                  <label class="col-sm-2 control-label col-lg-2" >FUTBOL 8
								  </label>
                                  <div class="col-lg-10">
                                      <output type="text" class="form-control" id="futbol8" disabled></output>
                                  </div>
                              </div>
                       
			 <a class="btn btn-theme btn-block" href="perfilequipo8.html" type="button"> Ver perfil equipo 8</a>
		            <hr>
                          </form>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div><!-- /row -->
          	
          	<!-- INPUT MESSAGES -->
          
          		
          	<!-- CUSTOM TOGGLES -->
          		
          	</div><!-- /row -->
          	
          	
		</section>
          </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      
      <!--footer end-->
  </section>
      
      <script type="text/javascript"> 
        document.getElementById("MostrarDatos").addEventListener("click",function(){
            $.post("Servletperfiluser",$(document.forms[0]),function(response){
                
                var usuario = document.getElementById("usuario");
                var usuarioen = document.getElementById("usuario_encabezado");
                var nombre = document.getElementById("nombre");
                var apellido = document.getElementById("apellido");
                var correo = document.getElementById("email");
                var edad= document.getElementById("edad");
                var celular = document.getElementById("celular");
                var genero = document.getElementById("genero");   
                var eqfut5 = document.getElementById("futbol5");
                var eqfut8 = document.getElementById("futbol8");
                var datos = JSON.parse(response);         
                console.log(datos.persona);
                
                usuarioen.innerHTML += datos.persona.usuario;
                usuario.innerHTML += datos.persona.usuario;                
                nombre.innerHTML += datos.persona.nombre;
                apellido.innerHTML += datos.persona.apellido;
                correo.innerHTML += datos.persona.email;
                edad.innerHTML += datos.persona.edad;
                celular.innerHTML += datos.persona.celular;
                genero.innerHTML += datos.persona.genero; 
                eqfut5.innerHTML += datos.persona.eqfut_5;
                eqfut8.innerHTML += datos.persona.eqfut_8;
                
                
                
                
            });    
        },false);
          
      </script>
     
      


   
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	<!--custom checkbox & radio-->
	
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>	
	<script src="assets/js/form-component.js"></script>     
 

 <script>

</script>



  


  </body>
</html>