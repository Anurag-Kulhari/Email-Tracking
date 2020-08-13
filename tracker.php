 <?php
 echo '<script>console.log("tracker file is invoked.! : $_GET["code"]"); </script>';
	echo '<script>console.log("tracker file is invoked.!"); </script>'; 
	$conn=new PDO("mysql:host=localhost;dbname=", "", "");  // change these according to your connection fields
	$link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ?"https" : "http") . "://" . $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; 
				echo $link;
	if(isset($_GET['code']) && !empty($_GET["code"]))
		{
		$ress=$_GET["code"];

		$query="UPDATE sender  set ISseen='true' WHERE email_track_code= '$ress' ;" ;
	//	echo $query;
		$stmt=$conn->prepare($query);			
	
		$stmt->execute();
	
		}
		else{
			echo 'error ';
		}
			
?>
