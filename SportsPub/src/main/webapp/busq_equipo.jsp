<%-- 
    Document   : busq_equipo
    Created on : 2/04/2019, 12:12:48 PM
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

    <title>Buscar equipo - SportsPub</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
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
              
              	  <p class="centered"><a href="principal.jsp"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Usuario</h5>
              	  	
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
                          <li><a  href="index.jsp">Perfil Usuario</a></li>
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
          	<h3><i class="fa fa-angle-right"></i> Buscar equipo</h3>
          	
          	<!-- DATOS GENERALES -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales </h4>
                      <form class="form-horizontal style-form" method="get">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nombre del Equipo</label>
                              <section class="col-sm-10">
                                  <input type="text" class="form-control" id="nombre" type="text" >
                              </section>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Lider del equipo </label>
                              <section class="col-sm-10">
                                  <input type="text" class="form-control" id="Apellido" type="text" >
                               </section>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Tipo de futbol </label>
                              <section class="col-sm-10">
                                  <select class="form-control" id="tipo_futbol" >
                                        <option value="bog">5</option>
                                        <option value="med">8</option>
                                       
                                       </select>
                              </section>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Genero</label>
                              <section class="col-sm-10">
                                       <select class="form-control" id="genero" >
                                        <option value="bog">Masculino</option>
                                        <option value="med">Femenino</option>
				         <option value="med">Mixto</option>
                                        </select>
                              </section>
                          </div>

                          
                                                 
						 <a class="btn btn-theme  " href=>Buscar Equipo</a>
		          
				  <hr>
                          </div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	          	
          <!-- /row -->
          	
          	<!-- INPUT MESSAGES -->
          
          		
          	<!-- CUSTOM TOGGLES -->
          		<div class="row mt">
                      <!-- SERVER STATUS PANELS -->
                      	<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Equipo</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p>Nombre Equipo</p>
										<p>Integrantes </p>
									</div>
									<section class="col-md-6">
										<p class="small mt">INFORMACION</p>
										<p>Tipo de futbol</p>
										

									</section>
									
								</div>
								<button class="btn btn-theme " href=".html">Contactar al equipo</button>
							</div>
						</div>
                      	

                      	<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Equipo</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<section class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p>Nombre Equipo</p>
										<p>Integrantes </p>
									</section>
									<section class="col-md-6">
										<p class="small mt">INFORMACION</p>
										<p>Tipo de futbol</p>

									</section>
									
								</div>
								<a class="btn btn-theme " href=".html">Contactar al equipo</a>
							</div>
						</div><!-- /col-md-4 -->
                      	
						<div class="col-md-4 col-sm-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Jugador</h5>
								</div>
								<p><img src="assets/img/ui-zac.jpg" class="img-circle" width="55"></p>
								<p><b></b></p>
								<div class="row">
									<section class="col-md-6">
										<p class="small mt">INFORMACION </p>
										<p class="small mt">Nombre Equipo</p>
										<p class="small mt">Integrantes </p>
									</section>
									<section class="col-md-6">
										<p class="small mt">INFORMACION</p>
										<p class="small mt">Tipo de futbol</p>
									</section>
									
								</div>
								<button class="btn btn-theme " href=".html">Contactar al equipo</button>
								
							</div>
						</div>><!-- /col-md-4 -->
                      	

                    </div><!-- /row -->
          	</div><!-- /row -->
          	
          	
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      
      <!--footer end-->
  </section>

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
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
    
 

  </body>
</html>
