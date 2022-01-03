<?php

   $dbhost ="localhost";
   $dbuser ="root";
   $dbpass ="";
   $dbname ="trmsystem";


   $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname );
   if (!$conn) 
   {
   	die("no hay conexion".mysqli_connect_error());
   }

   $nombre = $_POST["Usuario"];
   $pass = $_POST["clave"];

   $query = mysqli_query($conn, "SELECT * FROM admin where usuario='".$nombre."' and clave='".$pass."'" );

   	$nr = mysqli_num_rows($query);
   	
   	if ($nr == 1)
   	 {
         header("location:index.html");

   	}
    elseif ($nr == 0) 
    {
     	echo "su usuario no existe , no puede iniciar sesion";
     } 






  ?>