<%-- 
    Document   : principal
    Created on : 6/04/2019, 10:03:22 PM
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>Inicio - SportsPub</title>

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
                    <li><a class="logout" href="login.html">Logout</a></li>
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
              
              	  <p class="centered"><a href="perfil.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Usuario</h5>
              	  	
                  <li class="sub-menu">
                          <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Muro</span>
                      </a>
					  <ul class="sub">
					      <li class="active"><a  href="index.html">Inicio</a></li> 
						  
                          <li><a  href="pub_evento.html">Publicar evento nuevo</a></li>                          
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Equipo de futbol</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="crear_eqfut5.html">Crear equipo de futbol 5</a></li>
						  <li><a  href="crear_eqfut8.html">Crear equipo de futbol 8</a></li>
                                       
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-dashboard"></i>
                          <span>Buscar</span>
                      </a>
                      <ul class="sub">
                         
                         <li><a  href="busq_jug.html">Buscar jugadores </a></li>
                          <li><a  href="busq_equipo.html">Buscar equipos</a></li>
                          <li ><a  href="disp.jsp">Disponibilidad</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Perfiles </span>
                      </a>
                      <ul class="sub">
                          <li><a  href="perfil.html">Perfil Usuario</a></li>
                          <li><a  href="perfilequipo5.html">Perfil Equipo futbol 5 </a></li>
			  <li><a  href="perfilequipo8.html">Perfil Equipo futbol 8 </a></li>
                      </ul>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Configuracion </span>
                      </a>
                      <ul class="sub">
                          <li><a  href="config_perfilusuario.html">Configurar perfil </a></li>
			  <li><a  href="config_eq5.html">Configurar equipo futbol 5 </a></li>
			  <li><a  href="config_eq8.html">Configurar equipo futbol 8 </a></li>
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
                      	<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Evento futbol 5</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p>Equipo:</p>
										<p>Ubicacion:</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">SE SOLICITA</p>
										<p>Integrantes:</p>
										<p>Genero:</p>

									</div>
									
								</div>
								<a class="btn btn-theme " href="detalles_evento.html">Detalles Evento</a>
							</div>
						</div>
                      	

                      	<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Evento futbol 5</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p>Equipo:</p>
										<p>Ubicacion:</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">SE SOLICITA</p>
										<p>Integrantes:</p>
										<p>Genero:</p>

									</div>
									
								</div>
								<a class="btn btn-theme " href="detalles_evento.html">Detalles Evento</a>
							</div>
						</div><!-- /col-md-4 -->
                      	
						<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Evento futbol 5</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p>Equipo:</p>
										<p>Ubicacion:</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">SE SOLICITA</p>
										<p>Integrantes:</p>
										<p>Genero:</p>

									</div>
									
								</div>
								<a class="btn btn-theme " href="detalles_evento.html">Detalles Evento</a>
							</div>
						</div>><!-- /col-md-4 -->
                      	

                    </div><!-- /row -->
                    
                    				
				
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
