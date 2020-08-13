<?php+

$dbServername="localhost";
$dbUsername=""; // change these according to your connection fields
$dbPassword="";
$dbName="";

$conn=mysqli_connect($dbServername,$dbUsername,$dbPassword,$dbName);

if(!$conn)
{
	die("Connection Failed: ".mysqli_connect_error());
}

?>