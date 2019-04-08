<!DOCTYPE html>
<html lang="en">
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

	  <section id="login-page">
	  	<section class="container">
	  	
			<section class="form-login" >
		        <h2 class="form-login-heading">Registro de SportsPub</h2>
		        <section class="login-wrap">
				    <h5 class="form-login-heading">Nombre</h5>
					<input type="text" class="form-control" placeholder="Nombre" name="nombre"  id="nombre" autofocus>
		            <br>
					<h5 class="form-login-heading">Apellidos</h5>
					<input type="text" class="form-control" placeholder="Apellidos" name="apellido" id="apellido">
					<br>
					<h5 class="form-login-heading">Correo electronico </h5>
		            <input type="text" class="form-control" placeholder="Email" name="email"  id="email" >
					<h5 class="form-login-heading">Usuario </h5>
		            <input type="text" class="form-control" placeholder="User" name="user" id="user">
					<br>
					<h5 class="form-login-heading">Contraseña </h5>
					<input  type="password" class="form-control" placeholder="Contraseña" name="contrasena" id="contrasena" >
					<br>
					<h5 class="form-login-heading">Celular</h5>
		            <input type="text" class="form-control" placeholder="Cellphone" name="celular"  id="celular" >
					<h5 class="form-login-heading">Seleccione tu genero</h5>
					<label class="checkbox"> 
					
					                    <select class="form-control" id="genero" name="genero" >
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                        <option value="Otro">Otro</option>
                                       </select>
                    </label>
				     <h5 class="form-login-heading">Edad </h5>
					 <select class="form-control" id="edad" name="edad">
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
		             
		            <button class="btn btn-theme btn-block"   id="btn-regis" type="submit"><i class="fa fa-lock"></i> Registrarme a SportsPub </button>
		            <hr>	
		            
		            
		           
		        </section>
		
		          <!-- Modal -->
		          
		          <!-- modal -->
				  
				  
				  
				  
				  
		
		      </section>	  	
	  	
	  	</section>
	  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/metodos-javascript/registroJs.js"></script>
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/fondopri.jpg", {speed: 500});
    </script>


  </body>
</html>