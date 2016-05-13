<!DOCTYPE HTML>

<html>
	<head>
		<title>Noticias</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="index.html">LANCE</a></h1>
				<a href="#nav">Menu</a>
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
			<section id="main" class="wrapper style1">
				<div class="container">
					<header class="major special">
						<h2>NOTICIAS</h2>
						<p>Noticias agregadas recientemente</p>
					</header>
<?php 
$conexion = mysqli_connect("localhost","root","","s.s.de_accidentes") or die("Error " . mysqli_error($conexion));
$conexion ->query("SET NAMES 'utf8'");
$query = "select * from publicacion order by fecha desc" or die("Error in the consult.." . mysqli_error($conexion)); 
$resultado = $conexion->query($query);
while($filas=mysqli_fetch_array($resultado)){
	$ruta=$filas['ruta'];
	$desc=$filas['Descripcion'];
	$tit=$filas['Titulo'];
	$nom=$filas['Nombre'];
    $fec=$filas['Fecha'];
?>
  <section id="one" class="wrapper style1">
				<div class="inner">
					
					<article class="feature right">
						<span class="image"><img src="<?php echo $ruta; ?>"width="400" height="370" align="right"></span>
						<div class="content">
							<h2><?php echo $tit;?></h2>               
							<?php echo $fec;?><br>
						
							<p><b><?php echo $nom;?></b><br></p>
							<p>Descripción: <?php echo $desc;?><br></p>
						
							<ul class="actions">
								<li>
									<a href="#" class="button alt">Comentar</a>
								</li>
							</ul>
						</div>
					</article>
				</div>
			</section>
















<?php }?>
			
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
		
					</ul>
					<ul class="copyright">
						<li>LANCE</li>
						<li></li>
						<li>SM Desing</li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>