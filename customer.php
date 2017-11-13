<html>
<body>
<?php
$c=@mysql_connect("localhost","root","");
if(!$c){
	echo('<p> unable to connect the DB server at this time.</p>');
	exit(1);
}
else {
	if(!@mysql_select_db("botique",$c))
	{
		echo 'cannot find database';
		exit(1);
	}
	$mCID=$_POST["frmCID"];
	$mName=$_POST["frmName"];
	$mCell=$_POST["frmCell"];
	
	$qry = "insert into customer values('$mCID','$mName','$mCell')";
	if(@mysql_query($qry)){
	 echo ('<p> row is inserted</p>');
	 }
	}
	
?>
</body>
</html>