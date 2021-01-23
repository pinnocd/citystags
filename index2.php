<?php
echo'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">';
echo'<html>';

echo'<head>';
echo'<title>  City Stags Basketball | London Metropolitan League Division 2</title>';
echo'<meta name="keywords" content="">';
echo'<meta name="description" content="">';

echo'<link rel="stylesheet" type="text/css" href="style.css">';
echo'<style type="text/css">';
echo'<!--';
echo'.style1 {font-family: "trebuchet ms"}';
echo'-->';
echo'</style></head>';

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
$query="SELECT * FROM `games` WHERE 1 order by date DESC";
$result=mysql_query($query);

$num=mysql_numrows($result);

mysql_close();

$i=0;
while ($i < $num) {

$headline=mysql_result($result,$i,"headline");
$review=mysql_result($result,$i,"review");
$rw_date=mysql_result($result,$i,"date");
$fm_date=date("l, jS F Y",strtotime($rw_date));
$stag_score=mysql_result($result,$i,"stag_score");
$opposition=mysql_result($result,$i,"opposition");
$oppo_score=mysql_result($result,$i,"oppo_score");
$comment=mysql_result($result,$i,"comment");

echo' <div class="fw-paragraph">';
echo'  <h2><A></A><!-- ParagraphTitleStart -->';
echo $headline;
echo '<!-- ParagraphTitleEnd --></h2>';
echo'  <div class="fw-text">';
echo'   <!-- ParagraphBodyStart --><font style="color: oldlace;" size="2"><span style="font-family: verdana;">';
echo $fm_date;
echo'<br>';
echo'<span style="font-family: trebuchet ms;">';
echo $review;
echo'</span></font></font><font size="2"><span style="font-family: verdana;"><font style="color: oldlace;" size="1"><span style="font-family: trebuchet ms; color: oldlace;"></span>';
echo'<br style="color: oldlace;">';
echo'<span style="font-weight: bold; color: oldlace;">Final Score</span><span style="color: oldlace;">: </span><br style="color: oldlace;"><span style="color: oldlace;">City Stags: </span><span style="font-weight: bold; color: oldlace;">';
echo $stag_score;
echo'</span><span style="color: oldlace;">&nbsp;';
echo $opposition;
echo'</span><span style="font-weight: bold; color: oldlace;"> :';
echo $oppo_score;
echo'</span><br style="color: oldlace;">';
echo'<br style="color: oldlace;"><a style="color: oldlace;" href="statistics.html">';
echo'Statistics for this game now available here</a><br>';
echo'<br style="font-weight: bold;">';
echo $comment;
echo'</font><span style="color: crimson;"></span></span></font><br>';
echo'<!-- ParagraphBodyEnd -->';
echo'  </div> </div>';

$i++;
}
echo'</div></body></html>';

?>
