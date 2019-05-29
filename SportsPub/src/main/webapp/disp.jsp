<%-- 
    Document   : disp
    Created on : 2/04/2019, 12:23:29 PM
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Disponibilidad Jugadores - SportsPub</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
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
                    <li><a class="logout" href="incio.jsp">Logout</a></li>
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
              	  <h5 class="centered">Usuario</h5>
              	  	
                  <li class="sub-menu">
                          <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Muro</span>
                      </a>
					  <ul class="sub">
					      <a  href="principal.jsp">Inicio</a></li> 
						  
                          <li><a  href="pub_evento.jsp">Publicar evento nuevo</a></li>
                           
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Equipo de futbol</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="crear_eqfut.jsp">Crear equipo de futbol 5</a></li>
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
                         <li class="active"><a  href="disp.jsp">Disponibilidad</a></li>
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

              <div class="row">
                  <div class="col-lg-9 main-chart">
                  
                  	           
                      
                      <div class="row mt">
                      <!-- SERVER STATUS PANELS -->
                      	<div class="col-md-6">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Invitaciones</h5>
								</div>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p class="small mt">Jugador:</p>
										<p></p>
									</div>					
									
								</div>
								<button class="btn btn-theme " href="detalles_evento.html">Aceptar</button>
								<button class="btn btn-theme " href="detalles_evento.html">Cancelar</button>
							</div>
						</div>                     	

                      	<!-- /col-md-4 -->
                    
						
						<div class="col-md-6">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>EQUIPOS DISPONIBLES</h5>
								</div>							
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">Equipos</p>
										<p class="small mt">Nombre:</p>
										<p class="small mt">Estado:</p>
									</div>
									
									
								</div>
							     <button class="btn btn-theme " href="detalles_evento.html">Invitar</button>
								  <button class="btn btn-theme " href="detalles_evento.html">Info</button>
							</div>
						</div><!-- /col-md-4 -->
                      	

                    </div><!-- /row -->
					
			
                  	           
                      
                      <div class="row mt">
					  <!-- SERVER STATUS PANELS -->
                      	<div class="col-md-12">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Mi equipo</h5>
								</div>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p class="small mt">Numero de Jugadores:</p>
										<p class="small mt"> Nombre equipo </p>
									</div>
	                                <div class="col-md-6">
										<p class="small mt">Jugadores</p>
										<p class="small mt">Jugador 1:</p>
										<p class="small mt">Jugador 2:</p>
										<p class="small mt">Jugador 3:</p>
										<p class="small mt">Jugador 4:</p>
										<p class="small mt">Jugador 5:</p>

									</div>									
									
								</div>
								<button class="btn btn-theme " href="detalles_evento.html">Aceptar</button>
								<button class="btn btn-theme " href="detalles_evento.html">Cancelar</button>
							</div>
						</div>           
					  
					  
					  </div>
					  
					
					
					
                    
                    				
				
						</div><!-- /col-md-4 -->
						
					</div><!-- /row -->
					
			
					
                  </div>
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  
                    
                      
                  </div><!-- /col-lg-3 -->
              </div>
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	
  

  </body>
</html>
