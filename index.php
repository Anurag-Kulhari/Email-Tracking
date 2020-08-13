<?php
	$conn=new PDO("mysql:host=localhost;dbname=", "", "");//use your connection fields

	if(isset($_POST['submit']))
	{
		
		$tfile=$_FILES['attachment']['name'];
		$file="attachment/" . basename($_FILES['attachment']['name']);
		if(!move_uploaded_file($_FILES['attachment']['tmp_name'],$file))
		{
			echo "Please check your attachment";
			exit();
		}
		
		$name=$_POST['Name'];
		$email=$_POST['semail'];
		$msg=$_POST['tarea'];
		$ISseen="false";	
		
		require 'phpmailer/PHPMailerAutoload.php';
		
	
		$mail= new PHPMailer;
		$mail->IsSMTP();
		$mail->Host = 'smtp.gmail.com';
		$mail->Port=587;
		$mail->SMTPAuth=true;
		$mail->SMTPSecure='tls';
		$mail->Username='';//set your email ID
		$mail->Password='';//set your email Password
		
		$mail->setFrom('');//set your email ID
		$mail->addAddress($email);
		$mail->addAttachment($file);
		//$mail->addReplyTo($email,$name);
		$mail->WordWrap = 50;
		$mail->IsHTML(true);	
		$mail->Subject='Check Email Acknowledgement';
		
		$mail->headers = "Content-Type: text/html; charset=UTF-8\r\n";
		$track_code=md5(rand());
	
		$message_body='<h3>Name :'.$name.'<br> Email:' .$email.'<br> Message:'.$msg.'</h3>';
		$message_body.='<a href="http://localhost/mailUsingphpmailer2/tracker.php?code='.$track_code.'">Click here</a>';// change  your path Accordingly 
		$message_body .= '<img src="http://localhost/mailUsingphpmailer2/tracker.php?code='.$track_code.'" width="1" height="1" />'; 
		$mail->Body = $message_body;

		
		if($mail->send())
		{
				$data = array(
				':namee'	=>	$_POST["Name"],
				':semail'	=>	$_POST["semail"],
				':mg'		=>	$_POST["tarea"],
				':ft'		=>  $tfile,
				':track_code'	=>	$track_code
				);
				
			$stmt=$conn->prepare("insert into sender(Name,Email,Body,File,email_track_code,ISseen) values(:namee ,:semail,:mg,:ft,:track_code,'false');");
				
			if($stmt->execute($data))
				{
					echo '<h1 style="color:#48CF0C;" > "Email has been sent successfully!!" </h1>';
				}
			}	
		else
		{
			echo '<h1 style="color:tomoto;">"Something goes wrong. Please try again"</h1>';
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
  <title>How to Track Email Open or not using PHP</title>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery.min.js"></script>
		
		<script src="js/bootstrap.min.js"></script>
  
 </head>
<body>

<form method="post" enctype="multipart/form-data">


<div class="form-group">
					<label style ="margin-left:20px;">Name</label>
					<input type="text" name="Name" class="form-control" required style ="margin-left:20px;"/>
				</div>
				<div class="form-group">
					<label style ="margin-left:20px;" style="margin-right:20px;">Enter Receiver Email</label>
					<input type="email" name="semail" class="form-control" required style ="margin-left:20px;"/>
				</div>
				<div class="form-group">
					<label style ="margin-left:20px;">Enter Email Body</label>
					<textarea name="tarea" required rows="5" class="form-control" style ="margin-left:20px;"></textarea>
				</div>
				<div class="form-group">
				
				<INPUT type="file" name="attachment" required=required style ="margin-left:20px;"><br>
				</div>
				
				
				<div class="form-group">
					<input type="submit" name="submit" class="btn btn-info" value="Send Email"  style ="margin-left:60px;" />
				</div>
			</form>

	<div class="form-group">
		<input type="reset" name="reset" class="btn btn-info" style ="margin-left:60px;" />
	</div>
	
	
<form action ="showdata.php" method="post">
		
		<div class="form-group">
				<input type="submit" name="h-submit" class="btn btn-info" value="History" style ="margin-left:60px;" />
		</div>
</form>

</body>

</html>