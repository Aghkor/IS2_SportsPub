<%-- 
    Document   : newjsp1
    Created on : 2/04/2019, 12:34:33 PM
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
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.jsp" class="logo"><b>Sports Pub </b></a>
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
					      <li><a  href="index.jsp">Inicio</a></li>  
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
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales del evento  </h4>
                      <form class="form-horizontal style-form" method="get">
					   
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Nombre del evento</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" id="nombre_evento" type="text" >
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
                                  <input type="text" class="form-control" id="tipo_futbol" type="text" >
                              </div>
                          </div>
				 <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Fecha </label>
                              <div class="col-sm-10"> 
                                 <input id= "fecha_evento"type="date" name="fecha" min="2019-04-25" max="2019-12-31" step="2">   			  
                              </div>
                          </div>
						  
			 <div class="form-group">
                             <div class="col-sm-10"> 
                              <label class="col-sm-2 col-sm-2 control-label">Hora Inicial</label>  
                              <input id = "hora_ini"type="time" name="hora" min="18:00"  max="21:00" step="3600">
                              </div>
                             <br>
                             <br>
                             <div class="col-sm-10"> 
                              <label class="col-sm-2 col-sm-2 control-label">Hora Final</label> 			  
                                                           
                               <input id = "hora_fin"type="time" name="hora" min="18:00"  max="21:00" step="3600">	
                                </div>
                          </div>
						  
						  
						  <h4 class="mb"><i class="fa fa-angle-right"></i> Se solicita </h4>

                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Numero de jugadores</label>
                              <div class="col-sm-10">
                             <select class="form-control" id="num_jugadores">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>					 
						</select>
                              </div>
                          </div>
						  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Genero</label>
                              <div class="col-sm-10">
                                  <select class="form-control" id="genero">
                                      
						  <option value="mas">Masculino</option>
						  <option value="fem">Femenino</option>
						  <option value ="mix">Mixto</option>						 			 
						</select>
                              </div>
                          </div>  
                           
                             <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Edad maxima</label>
                              <div class="col-sm-10">
				  <select class="form-control" id="edad_max" >
						  <option value="17">17</option>
						  <option value="18">18</option>
						  <option value="19">19</option>
						  <option value="20">20</option>
						  <option value="21">21</option>
						  <option value="22">22</option>
						  <option value="23">23</option>
						  <option value="24">24</option>
						  <option value="25">25</option>
						  <option value="26">26</option>
						  <option value="27">27</option>
						  <option value="28">28</option>
						  <option value="29">29</option>
						  <option value="30">30</option>
						  <option value="31">31</option>
						  <option value="32">32</option>
						  <option value="33">33</option>
						  <option value="34">34</option>
						  <option value="35">35</option>
						  <option value="36">36</option>
						  <option value="37">37</option>
						  <option value="38">38</option>
						  <option value="39">39</option>
						  <option value="40">40</option>
						 
						</select>

                              </div>
                          </div> 
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Edad minima</label>
                              <div class="col-sm-10">
				<select class="form-control" id="edad_min" >
						 <option value="17">17</option>
						  <option value="18">18</option>
						  <option value="19">19</option>
						  <option value="20">20</option>
						  <option value="21">21</option>
						  <option value="22">22</option>
						  <option value="23">23</option>
						  <option value="24">24</option>
						  <option value="25">25</option>
						  <option value="26">26</option>
						  <option value="27">27</option>
						  <option value="28">28</option>
						  <option value="29">29</option>
						  <option value="30">30</option>
						  <option value="31">31</option>
						  <option value="32">32</option>
						  <option value="33">33</option>
						  <option value="34">34</option>
						  <option value="35">35</option>
						  <option value="36">36</option>
						  <option value="37">37</option>
						  <option value="38">38</option>
						  <option value="39">39</option>
						  <option value="40">40</option>
						 
						</select>

                              </div>
                          </div>
                                                
						  
						 <a  id="pEvent" class="btn btn-theme" >Publicar evento</a>
		          
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
        
    <script type="text/javascript" src="assets/metodos-javascript/pEventos.js"></script>  
    
  

  </body>
</html>