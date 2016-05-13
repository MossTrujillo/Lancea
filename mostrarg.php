

<?php 
$conexion=mysql_connect('localhost','root','') or die('No hay conexión a la base de datos');
$db=mysql_select_db('s.s.de_accidentes',$conexion)or die('no existe la base de datos.');

$consulta=mysql_query("select * from publicacion");
while($filas=mysql_fetch_array($consulta)){
	$ruta=$filas['ruta'];
	$desc=$filas['Descripcion'];
	$tit=$filas['Titulo'];
	$nom=$filas['Nombre'];
    $fec=$filas['Fecha'];
	

?>

<br>
<img src="<?php echo $ruta; ?>" width="180" height="214"><br>

<?php echo $tit;?><br>
<?php echo $nom;?><br>
<?php echo $fec;?><br>
<?php echo $desc;?><br>



<?php }?>