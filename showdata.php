<?php

	if(isset($_POST['h-submit']))
	{
	include_once 'includes/dbh.inc.php';
	$query="select * from sender order by id;";
	$stmt=mysqli_stmt_init($conn);
	if(!mysqli_stmt_prepare($stmt,$query))
			{
				echo "Sql error!!";
				exit();
			}	
	mysqli_stmt_execute($stmt);
	$result=mysqli_stmt_get_result($stmt);
?>
<!DOCTYPE HTML>

<html>
	<title>
		Histroy
	</title>

<body>

	<table align="center" border="1px" style="width:600px; line-height:40px;" >

		<tr>
			<th colspan="6"><h2>Record</h2></th>
		</tr>
	<t>
			<th>Name</th>
			<th>Email</th>
			<th>Message</th>
			<th>File</th>
			<th>ISseen</th>
			<th>Date_time</th>
	</t>
	<?php
		while($rows=mysqli_fetch_assoc($result))
		{
	?>
		<tr>	
			<td><?php echo $rows['Name']; ?></td>
			<td><?php echo $rows['Email']; ?></td>
			<td><?php echo $rows['Body']; ?></td>
			<td><?php echo $rows['File']; ?></td>
			<td><?php echo $rows['ISseen']; ?></td>
			<td><?php echo $rows['email_date_time']; ?></td>
		</tr>
	<?php
	}
	?>
	</table>
</body>
</html>
<?php
}
?>