<%-- 
    Document   : registro
    Created on : 5/03/2019, 11:51:48 AM
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>REGISTRO - SportsPub</title>

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

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" action="index.html" method="POST" >
		        <h2 class="form-login-heading">Registro de SportsPub</h2>
		        <div class="login-wrap">
				    <h5 class="form-login-heading">Nombre</h5>
		            <input type="text" class="form-control" placeholder="Nombre"  id="nombre"autofocus>
		            <br>
					<h5 class="form-login-heading">Apellidos</h5>
		            <input type="text" class="form-control" placeholder="Apellidos" id="apellido"autofocus>
					<br>
					<h5 class="form-login-heading">Correo electronico </h5>
		            <input type="text" class="form-control" placeholder="Email"  id="email"autofocus>
					<br>
					<h5 class="form-login-heading">Contraseña </h5>
		            <input  type="password" class="form-control" placeholder="Contraseña" id="contrasena" autofocus>
					<br>
					<label class="checkbox"> 
					<h5 class="form-login-heading">Seleccione tu genero</h5>
					<select class="form-control" id="genero" >
                                        <option value="bog">Masculino</option>
                                        <option value="med">Femenino</option>
                                        <option value="cal">Otro</option>
                                       </select>
                    </label>
				     <h5 class="form-login-heading">Edad </h5>
		           <select class="form-control" id="edad">
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
						</br>
		             
		            <button class="btn btn-theme btn-block" href="index.html" type="submit"  id=""> Registrarme a SportsPub </button>
		            <hr>	
		            
		            
		           
		        </div>
		
		          <!-- Modal -->
		          
		          <!-- modal -->
				  
				  
				  
				  
				  
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/fondo.jpg", {speed: 500});
    </script>

     <script src="https:code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
    <script>
        $(funcion()){
            $()
        }
    </script>

  </body>
</html>

