<?php
echo'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">';
echo'<html>';

echo'<head>';
echo'<title>  City Stags Basketball | London Metropolitan League Division 2</title>';
echo'<meta name="keywords" content="">';
echo'<meta name="description" content="">';

echo'<link rel="stylesheet" type="text/css" href="style.css">';
echo'	<script language="javascript" type="text/javascript">';
echo'	<!--';
echo'	function photoOpen(link, width, height)';
echo'	{';
echo'	  var photoWindow = window.open(link,"photo","toolbar=0,location=0,directories=0,status=0,menubar=0, scrollbars=0,resizable=0, width="640",height="480");';
echo'	}';
echo'	//-->';
echo'	</script>';

echo'</head>';

echo'<body >';
echo'<!--Copyright 2006 CityStags Corporation.  All Rights Reserved.-->';

echo'<div class="fw-container">';
echo'<div class="fw-head">';
echo' <h1>  City Stags Basketball</h1>';
echo' <h3>London Metropolitan League Division 2</h3>';

echo' <div class="fw-home-link">';
echo'  <a href="#">Home</a>';
echo' </div></div>';

echo'<div class="fw-nav-menu">';
echo' <ul>';
echo'  <li><A class="section" href="index.php">Home</A></li>';
echo'  <li><A class="section" href="http://www.fixs.co.uk/bb/compview.asp?DivisionID=4392"target="_blank">Div 2 league table</A></li>';
echo'  <li><A class="section" href="http://www.fixs.co.uk/bb/teamview.asp?TeamID=6091"target="_blank">fixtures & results</A></li>';
echo'  <li><A class="section" href="http://www.nba.com"target="_blank">NBA.com</A></li>';
echo'  <li><A class="section" href="http://www.streetmap.co.uk/newmap.srf?x=531750&y=183250&z=1&sv=531750,183250&st=4&ar=N&mapp=newmap.srf&searchp=newsearch.srf&ax=532025&ay=183623"target="_blank">Map to Isling.G.School</A></li>';
echo'  <li><A class="section" href="statistics.html">statistics</A></li>';
echo'  <li><A class="section" href="contacts.html">Contacts</A></li>';
echo'  <li><A class="section" href="gallery.html">Gallery</A></li>';
echo'</ul><hr></div>';

echo'<div class="fw-with-mini fw-content">';

$username="dba";
$password="division1";
$database="stagdata";

mysql_connect(localhost,$username,$password);
@mysql_select_db($database) or die( "Unable to select database");
$query="SELECT * FROM `gallery` WHERE 1 order by date DESC";
$result=mysql_query($query);

$num=mysql_numrows($result);

mysql_close();

echo' <div class="fw-paragraph">';
echo'  <div class="fw-text">';
echo'<table cellpadding="5" cellspacing="2" border="0">';

$i=0;
while ($i < $num) {

$id=mysql_result($result,$i,"id");
$title=mysql_result($result,$i,"title");
$location=mysql_result($result,$i,"location");
$file=mysql_result($result,$i,"file");
$rw_date=mysql_result($result,$i,"date");
$fm_date=date("l, jS F Y",strtotime($rw_date));
$description=mysql_result($result,$i,"description");

echo'<tr>';
echo'	<td align="center">';
echo'	<a href="javascript:photoOpen("im1.jpg","640","480");">';
echo'	<strong><img src="';
echo $location;
echo $file;
echo'" width="100" height="75"></a></td>';
echo'	<td align="left">';
echo $title;
echo'   </td>';
echo'	<td align="left">		';
echo $fm_date;
echo'   </td>';
echo'</tr>';

$i++;
}
echo'</table>';
echo'<br>';
echo'</div></div>';

echo'</div></body></html>';

?>
