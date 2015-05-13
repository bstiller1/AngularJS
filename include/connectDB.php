<?php
	$dbConn = @mysql_connect('localhost', 'blake', 'secret55');
	if(!$dbConn)
	{
		die('Could not connect: ' . mysql_error());
	}
	$dbObj = mysql_select_db('jackieJewerly', $dbConn);
	?>