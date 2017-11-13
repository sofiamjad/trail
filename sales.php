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
	$Ccode=$_POST["ccode"];
	$Cid=$_POST["cid"];
	$Date=$_POST["date"];
	$Price=$_POST["Price"];
	$type = $_POST['quantity'];
	$Discount=$_POST["discount"];
	$Amount=$_POST["amount"];
	$qry="insert into sales values('$Ccode','$Cid','$Date','$Price','$type','$Discount','$Amount')";
		
	if(@mysql_query($qry)){
	 echo ('<h1> row is inserted</h1>');
	 }
	
	
	
	
	
	}
	}
	
?>
</body>
</html>