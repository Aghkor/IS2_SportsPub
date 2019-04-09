<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Dashboard">
		<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

		<title>Publicacion evento - SportsPub</title>

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

						<p class="centered"><a href="perfil.jsp"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
						<h5 class="centered">Usuario</h5>

						<li class="sub-menu">
							<a href="javascript:;" >
								<i class="fa fa-desktop"></i>
								<span>Muro</span>
							</a>
							<ul class="sub">
								<li><a  href="principal.jsp">Inicio</a></li>  
								<li class="active"><a  href="pub_evento.jsp">Publicar evento nuevo</a></li>                          
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

			<!-- **********************************************************************************************************************************************************
			MAIN CONTENT
			*********************************************************************************************************************************************************** -->
			<!--main content start-->
			<section id="main-content">
				<section class="wrapper">
					<h3><i class="fa fa-angle-right"></i> Publicar evento futbol </h3>

					<!-- DATOS GENERALES -->
					<%
												String msg = (String) session.getAttribute("user");
												if (msg == null) {
													response.sendRedirect("index.html");
									  }%> 
					<div class="row mt">
						<div class="col-lg-12">
							<div class="form-panel">
								<h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales del evento  </h4>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Nombre del primer equipo</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="nombre_equipo1" type="text" >
										</div>
									</div>
								<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Nombre del segundo equipo</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="nombre_equipo2" type="text" >
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Ubicacion </label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="ubicacion" type="text" >
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Tipo de futbol </label>
										<div class="col-sm-10">
											<select class="form-control" id="tipo_futbol" >
												<option value="bog">Futbol 5</option>
												<option value="med">Futbol 8</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Tiempo de espera </label>
										<div class="col-sm-10">
											<select class="form-control" id="tiempo">
												<option>10 minutos</option>
												<option>20 minutos</option>
												<option>30 minutos</option>
												<option>40 minutos</option>
												<option>50 minutos</option>
												<option>60 minutos</option>
											</select>

										</div>
									</div>

									<h4 class="mb"><i class="fa fa-angle-right"></i> Se solicita </h4>


									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Numero de jugadores</label>
										<div class="col-sm-10">
											<select class="form-control" id="num_jugadores">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>


											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Genero</label>
										<div class="col-sm-10">
											<select class="form-control" id="genero">
												<option>Masculino</option>
												<option>Femenino</option>
												<option>Mixto</option>

											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Edad maxima</label>
										<div class="col-sm-10">
											<select class="form-control" id="edad_max" >
												<option>17</option>
												<option>18</option>
												<option>19</option>
												<option>20</option>
												<option>21</option>
												<option>22</option>
												<option>23</option>
												<option>24</option>
												<option>25</option>
												<option>26</option>
												<option>27</option>
												<option>28</option>
												<option>29</option>
												<option>30</option>
												<option>31</option>
												<option>32</option>
												<option>33</option>
												<option>34</option>
												<option>35</option>
												<option>36</option>
												<option>37</option>
												<option>38</option>
												<option>39</option>
												<option>40</option>

											</select>

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">Edad minima</label>
										<div class="col-sm-10">
											<select class="form-control" id="edad_min" >
												<option>17</option>
												<option>18</option>
												<option>19</option>
												<option>20</option>
												<option>21</option>
												<option>22</option>
												<option>23</option>
												<option>24</option>
												<option>25</option>
												<option>26</option>
												<option>27</option>
												<option>28</option>
												<option>29</option>
												<option>30</option>
												<option>31</option>
												<option>32</option>
												<option>33</option>
												<option>34</option>
												<option>35</option>
												<option>36</option>
												<option>37</option>
												<option>38</option>
												<option>39</option>
												<option>40</option>

											</select>

										</div>
									</div>


									<a class="btn btn-theme btn-block" id="pEvent" href="principal.jsp">Publicar evento</a>

									<hr>
									</div>
								</form>
							</div>
						</div><!-- col-lg-12-->      	
					</div><!-- /row -->


					<!-- DATOS DE SUS EQUIPOS -->


					<!-- DATOS DE SUS EQUIPOS -->

					<!-- INPUT MESSAGES -->


					<!-- CUSTOM TOGGLES -->
					<!-- /row -->


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
		<script src="assets/metodos-javascript/pEventos.js"></script>


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


		<script>
			//custom select box

			$(function () {
				$('select.styled').customSelect();
			});

		</script>

	</body>
</html>
