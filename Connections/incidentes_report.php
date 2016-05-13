<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_incidentes = "localhost";
$database_incidentes = "";
$username_incidentes = "root";
$password_incidentes = "";

$incidentes_pro = mysql_pconnect($hostname_incidentes, $username_incidentes, $password_incidentes) or trigger_error(mysql_error(),E_USER_ERROR); 

?>