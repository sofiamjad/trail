<html>
<body>
<?php
$c=@mysql_connect("localhost","root","");
	if(!$c)
	{
		echo('<p> unable to connect DB server at this time .</p>');
		exit(1);
	}
	else {
		if(!@mysql_select_db("botique",$c))
		{
			echo 'cannot find database';
			exit(1);
		}
		else
		{
			$Id = $_POST['id'];
			$Design = $_POST['design'];
			$type = $_POST['quantity'];
			$Brand = $_POST['brand'];
			$Category = $_POST['category'];
			$qry= "insert into clothes values ('$Id','$Design','$type','$Brand','$Category')";
			if(@mysql_query($qry))
			{
				echo 'row inserted';
			}
			
		}
	}
?>
</body>
</html>