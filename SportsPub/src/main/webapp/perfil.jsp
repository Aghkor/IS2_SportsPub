<%@page import="co.usa.sports_pub.modelos.vo.Usuario"%>

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


	</head>

	<body>

		<section id="container" >
			<!-- **********************************************************************************************************************************************************
			TOP BAR CONTENT & NOTIFICATIONS
			*********************************************************************************************************************************************************** -->
			<!--header start-->
			<header class="header black-bg">
				<div class="sidebar-toggle-box">
					<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
				</div>
				<!--logo start-->
				<a href="principal.jsp" class="logo"><b>Sports Pub </b></a>
				<!--logo start-->
				<a href="principal.jsp" class="logo"><b>SportsPub</b></a>
				<!--logo end-->
				<div class="top-menu">
					<ul class="nav pull-right top-menu">
						<li><a class="logout" href="index.jsp">Logout</a></li>
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
						<% Usuario user = (Usuario) session.getAttribute("user");%>

						<p class="centered"><a href="perfil.jsp"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
						<h5 class="centered" id="usuario_encabezado"><%= user.getUsuario()%></h5>

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
							</ul>
						</li>
						<li class="sub-menu">
							<a href="javascript:;" >
								<i class="fa fa-th"></i>
								<span>Perfiles </span>
							</a>
							<ul class="sub">
								<li class="active"><a  href="perfil.jsp">Perfil Usuario</a></li>
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
							<div class="form-panel" id="contenedor">
								<h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales </h4>
								<form class="form-horizontal style-form" method="get"> 




									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Usuario </label>
										<div class="col-sm-10" >
											<output type="text" class="form-control" id="usuario"  disabled> <%= user.getUsuario()%>  </output>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Nombre</label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="nombre" value=""  disabled><%= user.getNombre()%></output>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Apellido </label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="apellido"  disabled><%= user.getApellido()%></output>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Correo Electronico </label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="email"  disabled><%= user.getEmail()%></output>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Celular </label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="celular"  disabled><%= user.getCelular()%></output>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Edad</label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="edad"  disabled><%= user.getEdad()%></output>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Genero</label>
										<div class="col-sm-10">
											<output type="text" class="form-control" id="genero"  disabled><%= user.getGenero() %></output>
										</div>
									</div>






									<label class="col-sm-2 col-sm-2 control-label">Valorizacion del jugador</label>
									<div class="valoracion" id="valorizacion" >
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




									<a class="btn btn-theme  " href="config_perfilusuario.jsp">Configuracion del perfil</a>

									<hr>
									</div>
								</form>
							</div>
						</div><!-- col-lg-12-->      	
					</div><!-- /row -->


					<!-- DATOS DE SUS EQUIPOS -->
					<div class="row mt">
						<div class="col-lg-12">
							<div class="form-panel">
								<h4 class="mb"><i class="fa fa-angle-right"></i> EQUIPOS FUTBOL 5 </h4>
								<form class="form-horizontal tasi-form" method="get">
									<div class="form-group " id="contenedor2">
										<label class="col-sm-2 control-label col-lg-2" >FUTBOL 5 </label>
										<div class="col-lg-10">
											<input type="text" class="form-control" id="futbol5" disabled>

										</div>
									</div>


									<button class="btn btn-theme btn-block" href="perfilequipo5.jsp" type="submit">VER PERFIL DE LOS EQUIPOS </button>
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
								<form class="form-horizontal tasi-form" method="get">


									<div class="form-group" id="contenedor3">
										<label class="col-sm-2 control-label col-lg-2" >FUTBOL 8
										</label>
										<div class="col-lg-10">
											<input type="text" class="form-control" id="futbol8" disabled>
										</div>
									</div>
									<p id="demo"></p>
									<button class="btn btn-theme btn-block" href="perfilequipo8.jsp" type="submit"> VER PERFIL DE LOS EQUIPOS</button>
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


		<!-- AJAX DEL PERFIL.HTML-->
		<script src="assets/metodos-javascript/perfil_jvs.js"></script>

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


		<script></script>






	</body>
</html>
