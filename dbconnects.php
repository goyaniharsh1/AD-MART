<?php
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="vaidik";

	$conn=mysqli_connect($servername,$username,$password);

	if(!$conn)
	{
		die("Connection failed:".mysqli_connect_error());
	}
	$db=mysqli_select_db($conn,$dbname);

	if($db)
	{
		
	}
	else
	{
		echo "Database Not Selected";
	}
?>
