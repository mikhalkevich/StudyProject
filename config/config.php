<?php
 $dblocation = 'localhost';
 $dbname = 'project';
 $dbuser = 'root';
 $dbpassword = 'root';
 $dbport = 3306;

 $dbconnect = mysqli_connect($dblocation, $dbuser, $dbpassword, $dbname, $dbport);
 if(!$dbconnect){
	 exit('Error connect DB');
 }