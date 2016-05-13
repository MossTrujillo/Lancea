<!DOCTYPE HTML>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<html>
	<head>
		<title>Publicar</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<h1><a href="index.html">LANCE</a></h1>
				<a href="#nav">Menú</a>
			</header>

		<!-- Nav -->
			<nav id="nav">
				<ul class="links">
					<li><a href="index.php">Inicio</a></li>
					<li><a href="publicar.php">Publicar</a></li>
					<li><a href="noticias.php">Noticias</a></li>
				</ul>
			</nav>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">

					<header class="major special">
						<h2>Publicar</h2>
						Realiza una publicación llenando los campos correctamente, algunos campos son obligatorios
					</header>
					
					<form id="form1" name="form1" method="post" action="recibir.php" enctype="multipart/form-data">
						<div class="container 75%">
							<div class="row uniform 50%">
                                <div class="6u 12u$(xsmall)">
                               <input type="text" placeholder="Titúlo" name="titulo" id="titulo" required/>
	                           </div> 
	                           <p>Seleccione la Imagen:
                               </p>
                               <div class="3u$ 12u$(xsmall)">
                               <input type="file" name="imagen" required/>
                               </div> 
								<div class=" 12u$">
									<input name="nombre" placeholder="Nombre" type="text" required/>
								</div>
								
								<div class="12u$">
									<textarea name="descripcion" id="descripcion" placeholder="Descripción" rows="4" required/></textarea>
								</div>
								
							    <div class="4u 12u$(xsmall)">
									<input name="calle" id="calle"  placeholder="Calle" type="text" required/>
								</div>											
							       <div class="4u 12u$(xsmall)">
									<input name="numint" id="numint" placeholder="N° Interior" type="text" />
								</div>								
							      <div class="4u$ 12u$(xsmall)">
									<input name="numext" id="numext" placeholder="N° Exterior" type="text" />
								</div>
								
							    <div class="6u 12u$(xsmall)">
									<input name="colonia" id="colonia" placeholder="Colonia" type="text" required/>
								</div>
								
								
							    <div class="6u$ 12u$(xsmall)">
									<input name="cp"  id="cp" placeholder="Codigo Postal" type="text" />
								</div>
								
								
							    <div class="6u 12u$(xsmall)">
									<input name="municipio" id="municipio" placeholder="Municipio" type="text" required/>
								</div>
								
								
							    <div class="6u$ 12u$(xsmall)">							
							        <input  name="estado" id="estado" placeholder="Estado" type="text" />
						   
                                       <div>
							            <ul class="actions">
							            <li><input type="submit" class="special" name="Aceptar" id="Aceptar" value="Enviar" /></li>
							            <li><input type="reset" class="alt" value="Reiniciar" /></li>
						                </ul>      
							           </div>
						        </div>								
							</div>
						</div>						
					</form>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon fa-facebook">
							<span class="label">Facebook</span>
						</a></li>
						<li><a href="#" class="icon fa-twitter">
							<span class="label">Twitter</span>
						</a></li>
						<li><a href="#" class="icon fa-instagram">
							<span class="label">Instagram</span>
						</a></li>
						<li><a href="#" class="icon fa-linkedin">
							<span class="label">LinkedIn</span>
						</a></li>
					</ul>
				
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>