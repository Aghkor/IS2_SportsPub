<%-- 
    Document   : crear_eqfut5
    Created on : 2/04/2019, 12:19:56 PM
    Author     : PERSONAL
--%>

<%@page import="co.usa.sports_pub.modelos.vo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Perfil equipo 5 - SportsPub</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <link href="assets/css/table-responsive.css" rel="stylesheet">

    
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
       <!--header start-->
      <header class="header black-bg">
	  <!--logo start-->
            <a href="principal.html" class="logo"><b>SportsPub</b></a>
            <!--logo end-->
              <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="incio.html">Logout</a></li>
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
              <% Usuario user = (Usuario) session.getAttribute("usuario");%>
              	  <p class="centered"><a href="index.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><%= user.getUsuario()%></h5>
              	  	
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
                          <li class="active"><a  href="crear_eqfut5.jsp">Crear equipo de futbol 5</a></li>
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
                          <li><a  href="disp.jsp">Disponibilidad</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Perfiles </span>
                      </a>
                      <ul class="sub">
                          <li><a  href="perfil.jsp">Perfil Usuario</a></li>
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
          	<h3><i class="fa fa-angle-right"></i> Creacion de equipo Futbol 5</h3>
          	
          	<!-- DATOS GENERALES DEL EQUIPO 1 -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Datos del  Equipo 1 </h4>
                      <form class="form-horizontal style-form" method="post">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nombre del Equipo</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" id="nombreequipo" >
                              </div>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Lider del equipo </label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" id="lider_equipo"  >
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Tipo de futbol </label>
                              <div class="col-sm-10">
                                  <select class="form-control" id="tipo_futbol" >
                                        <option value="5">5</option>
                                   
                                       
                                       </select>
                              </div>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Genero</label>
                              <div class="col-sm-10">
                                       <select class="form-control" id="genero" >
                                        <option value="mas">Masculino</option>
                                        <option value="fem">Femenino</option>
					<option value="mix">Mixto</option>
                                        </select>
                              </div>
                          </div>
						  
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Ingresar escudo </label>
                              <div class="col-sm-10">
                                  <input name="file" type="file"   id="escudo"><br/>
                              </div>
                          </div>

                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Numero de jugadores</label>
                              <div class="col-sm-10">
                                          <select class="form-control" id="num_jugadores">
						  <option value = "1">1</option>
						  <option value = "2">2</option>
						  <option value = "3">3</option>
						  <option value = "4">4</option>
						  <option value = "5">5</option>
						
						 
						</select>
                              </div>
                          </div>
						   
						  
				 <h4 class="mb"><i class="fa fa-angle-right"></i> INTEGRANTES  FUTBOL 5 </h4>
						  
						  <div class="form-group ">
                                  <label class="col-sm-2 col-sm-2 control-label" >Integrante 1 </label>
                                  <div class="col-lg-10">
                                      <input type="text" class="form-control" id="int_1" disabled>
                                  </div>
                              </div>
						    <div class="form-group ">
                                  <label class="col-sm-2 col-sm-2 control-label" >Integrante 2 </label>
                                  <div class="col-lg-10">
                                      <input type="text" class="form-control" id="int_2" disabled>
                                  </div>
                              </div>
							    <div class="form-group ">
                                  <label class="col-sm-2 col-sm-2 control-label" >Integrante 3 </label>
                                  <div class="col-lg-10">
                                      <input type="text" class="form-control" id="int_3" disabled>
                                  </div>
                              </div>
							    <div class="form-group ">
                                  <label class="col-sm-2 col-sm-2 control-label" >Integrante 4 </label>
                                  <div class="col-lg-10">
                                      <input type="text" class="form-control" id="int_4" disabled>
                                  </div>
                              </div>
							    <div class="form-group ">
                                  <label class="col-sm-2 col-sm-2 control-label" >Integrante 5 </label>
                                  <div class="col-lg-10">
                                      <input type="text" class="form-control" id="int_5" disabled>
                                  </div>
                              </div>
                                 </form>
							  
						 
						  
                        <a class="btn btn-theme btn-block" href="perfilequipo5.jsp">Creacion del equipo futbol 5</a>
		            <hr>
                          </div>
                    
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
	<!-- /row -->
			
			
			
			<!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
     
      <!--footer end-->
  </section>

          
    <!-- METODOS JAVASCRIPT --->
    <script type ="text/javascript" src="assents/metodos-javascript/crearEq5.js"></script>        
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    

  </body>
</html>
