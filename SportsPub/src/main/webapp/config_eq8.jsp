<%-- 
    Document   : config_eq8
    Created on : 2/04/2019, 12:16:48 PM
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

        <title>CONFIG PERFIL EQUIPO 8 - SportsPub</title>

        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/style-responsive.css" rel="stylesheet">

        <link href="assets/css/table-responsive.css" rel="stylesheet">

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
                <section class="top-menu">
                    <form class="nav pull-right top-nav" method="get" action="Servletlogin">
                        <button class="btn btn-theme btn-block" name="logout" value="1">Salir</button>
                        </from>
                </section>
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
                        <%String msg = (String) session.getAttribute("user");
							if (msg == null) {
								response.sendRedirect("index.jsp");
							}
						%>

                        <p class="centered"><a href="principa.jsp"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                        <h5 class="centered"><%= msg %></h5>

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
                                <li><a  href="disp.jsp">Disponibilidad</a></li>
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
                                <li class="active"><a  href="config_eq8.jsp">configurar equipo futbol 8 </a></li>
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
                    <h3><i class="fa fa-angle-right"></i> Configuracion del equipo Futbol 8</h3>

                    <!-- DATOS GENERALES DEL EQUIPO 1 -->
                    <div class="row mt">
                        <div class="col-lg-12">
                            <div class="form-panel">
                                <h4 class="mb"><i class="fa fa-angle-right"></i> Datos Generales Equipo  </h4>
                                <form class="form-horizontal style-form" method="get">


                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Escudo del equipo</label>
                                        <div class="col-sm-10">
                                            <p><img src="assets/img/ui-zac.jpg" class="img-circle" width="80" id="escudo"></p>
                                            <input name="file" type="file"   id="escudo"><br/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Nombre del Equipo</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="nombreequipo_1" type="text"  >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Lider del equipo </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="lider_equipo" type="text"  >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Tipo de futbol </label>
                                        <div class="col-sm-10">
                                            <select class="form-control" id="tipo_futbol" >
                                                <option value="bog">5</option>
                                                <option value="med">8</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Genero</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" id="genero"  >
                                                <option value="bog">Masculino</option>
                                                <option value="med">Femenino</option>
                                                <option value="med">Mixto</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Numero de jugadores</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" id="num_jugadores">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>


                                            </select>
                                        </div>
                                    </div>
                                    <a class="btn btn-theme btn-block " href="config_perfilusuario.jsp" type="s">Guardar cambios</a>
                                    <hr>
                                    </div>
                                </form>
                            </div>
                        </div><!-- col-lg-12-->      	
                    </div><!-- /row -->
                    <!-- INTEGRANTES -->
                    <div class="row mt">
                        <div class="col-lg-12">
                            <div class="form-panel">
                                <h4 class="mb"><i class="fa fa-angle-right"></i> INTEGRANTES  FUTBOL 8 </h4>
                                <form class="form-horizontal tasi-form" method="get">
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 1 </label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme  btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>  
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 2</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_2" disabled>
                                            </br>
                                            <a class="btn btn-theme  btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 3 </label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block  " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 4 </label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block  " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 5 </label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 6</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 7</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-sm-2 control-label col-lg-2" >Integrante 8 </label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="futbol5_1" disabled>
                                            </br>
                                            <a class="btn btn-theme btn-block " href="config_perfilusuario.jsp" type="s">Eliminar del equipo </a>
                                        </div>
                                    </div>




                                    <hr>
                                </form>
                            </div><!-- /form-panel -->
                        </div><!-- /col-lg-12 -->
                    </div><!-- /row -->




                    <!-- /MAIN CONTENT -->

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


                </body>
                </html>
