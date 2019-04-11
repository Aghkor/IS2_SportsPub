<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>LOGIN - SportsPub</title>

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
	  	
			<section class="form-login">
		        <h2 class="form-login-heading">Ingresa Ahora</h2>
		        <section class="login-wrap">
					<input type="text" class="form-control" id="user" placeholder="Email o usuario" name="user" autofocus>
		            <br>
					<input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.jsp#myModal"> Olvidaste tu contraseña?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block"  id="btn-login" type="submit"><i class="fa fa-lock"></i> INGRESO </button>
		            <hr>
		            
		        </section>
					<!-- Modal -->
		          <section aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <section class="modal-dialog">
		                  <section class="modal-content">
		                      <section class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </section>
		                      <section class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </section>
		                      <section class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </section>
		                  </section>
		              </section>
		          </section>
		          <!-- modal -->
		      </section>
				<form class="form-login" action="registro_1.jsp">
				 <section class="login-wrap">
				 <section class="registration">
		                No tienes una cuenta<br/>
		                <a class="form-login-heading" href="login.jsp#myModal">
							<button class="btn btn-theme btn-block"  type="submit"><i class="fa fa-lock"></i> Crear tu cuenta en SportsPub </button>
		                    
						 </a>
		            </section>
				 </section>
				
				
			</form>
			
	  	
	  	</section>
	  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
     <script src="assets/metodos-javascript/loginjs.js"></script>
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/fondo.jpg", {speed: 500});
        $.backstretch("assets/img/fondopri.jpg", {speed: 500});
    </script>


  </body>
</html>
