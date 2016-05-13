
<?php 

// $conexion=mysql_connect('localhost','root','') or die('No hay conexión a la base de datos');
// $db=mysql_select_db('s.s.de_accidentes',$conexion)or die('No existe la base de datos.');
// @mysql_query("SET NAMES 'utf8'"); 


$conexion = mysqli_connect("localhost","root","","s.s.de_accidentes") or die("Error " . mysqli_error($conexion));
$conexion ->query("SET NAMES 'utf8'");



$rutaEnServidor='imagenes';
$rutaTemporal=$_FILES['imagen']['tmp_name'];
$nombreImagen=$_FILES['imagen']['name'];
$rutaDestino=$rutaEnServidor.'/'.$nombreImagen;
move_uploaded_file($rutaTemporal,$rutaDestino);

$a=$_POST['calle'];
$b=$_POST['numint'];
$c=$_POST['numext'];
$d=$_POST['colonia'];
$e=$_POST['cp'];
$f=$_POST['municipio'];
$g=$_POST['estado'];

// $sql="INSERT INTO direccion(Calle, N_Interior, N_Exterior, Colonia, CP, Ciudad, Estado) 
// values('".$a."','".$b."','".$c."','".$d."','".$e."','".$f."','".$g."')";
// $res=mysqli_query($sql,$conexion);

mysqli_query($conexion,"INSERT INTO direccion(Calle, N_Interior, N_Exterior, Colonia, CP, Ciudad, Estado) 
VALUES ('".$a."','".$b."','".$c."','".$d."','".$e."','".$f."','".$g."')");





$ide=mysqli_insert_id();

$tit=$_POST['titulo'];
$nom=$_POST['nombre'];
$desc=$_POST['descripcion'];
$fecha_actual = date("d-m-y");

mysqli_query($conexion,"INSERT INTO publicacion (ruta,descripcion,titulo,Fecha,Nombre,idDireccion) 
values('".$rutaDestino."','".$desc."','".$tit."','".$fecha_actual."','".$nom."','".$ide."')");


if ($res1){
	// echo '<script>alert("El envío del formulario ha concluído exitosamente")</script>';
echo "
<script language='JavaScript'>
var prueba = 'Sus datos fueron guardados correctamente';
alert(prueba);
location.href = \"http:////localhost/Incidentes/index.php\"   
</script>";
}else{
    echo 'no se puedo insertar';

} 


?>