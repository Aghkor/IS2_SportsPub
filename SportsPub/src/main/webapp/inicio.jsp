<%-- 
    Document   : incio
    Created on : 2/04/2019, 12:25:45 PM
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

    <title>LOGIN - SportsPub</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">


  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
			<form class="form-login" action="Servletlogin" method="post">
		        <h2 class="form-login-heading">Ingresa Ahora</h2>
		        <div class="login-wrap">
					<input type="text" class="form-control" id="email" placeholder="Email o usuario" name="user" autofocus>
		            <br>
					<input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.jsp#myModal"> Olvidaste tu contraseña?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" href="principal.jsp" type="submit"><i class="fa fa-lock"></i> INGRESO </button>
		            <hr>
		            
		        </div>
					<!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		      </form>
				<form class="form-login" action="registro_1.jsp">
				 <div class="login-wrap">
				 <div class="registration">
		                No tienes una cuenta<br/>
		                <a class="form-login-heading" href="login.jsp#myModal">
							<button class="btn btn-theme btn-block"  type="submit"><i class="fa fa-lock"></i> Crear tu cuenta en SportsPub </button>
		                    
						 </a>
		            </div>
				 </div>
				
				
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
        $.backstretch("assets/img/fondopri.jpg", {speed: 500});
    </script>


  </body>
</html>
