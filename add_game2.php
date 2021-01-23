<?php
// open connection to database
$dbhost = 'localhost';
$dbuser = 'dba';
$dbpass = 'division1';
$dbname = 'stagdata';

$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');
mysql_select_db($dbname);

// check if the form is submitted
if(isset($_POST['btnSubmit']))
{
    // get the input from $_POST variable
    // trim all input to remove extra spaces
    $headline   = trim($_POST['txtheadline']);
    $date       = trim($_POST['txtdate']);
    $review     = trim($_POST['txtreview']);
    $comment    = trim($_POST['txtcomment']);
    $home_away  = trim($_POST['txthome_away']);
    $opposition = trim($_POST['txtopposition']);
    $oppo_score = trim($_POST['txtoppo_score']);
    $stag_score = trim($_POST['txtstag_score']);

    // escape the message ( if it's not already escaped )
    if(!get_magic_quotes_gpc())
    {
        $review    = addslashes($review);
    }

     // prepare the query string
    $query = "INSERT INTO games (headline, date, review, comment, home_away, opposition, oppo_score, stag_score) " .
             "VALUES ('$headline', '$date', '$review', '$comment', '$home_away', '$opposition', '$oppo_score', '$stag_score')";

    // execute the query to insert the input to database
    // if query fail the script will terminate
    mysql_query($query) or die('Error, query failed. ' . mysql_error());

    // redirect to current page so if we click the refresh button
    // the form won't be resubmitted ( as that would make duplicate entries )
 //   header('Location: ' . $_SERVER['REQUEST_URI']);

    // force to quite the script. if we don't call exit the script may
    // continue before the page is redirected
    exit;
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>City Stags Game Insertion Tool</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="888">
    <tr>
      <td width="117">Headline</td>
      <td width="759"><input name="txtheadline" type="text" id="txtheadline" size="120" maxlength="120" /></td>
    </tr>
    <tr>
      <td><label>Date <br />
      (YYYY-MM-DD)</label></td>
      <td><label>
        <input name="txtdate" type="text" id="txtdate" />
      </label></td>
    </tr>
    <tr>
      <td><label>Review </label></td>
      <td><textarea name="txtreview" cols="100" rows="20" id="txtreview"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><p>
        <label>
          <input type="radio" name="txthome_away" value="H" />
          Home</label>
        <br />
        <label>
          <input type="radio" name="txthome_away" value="A" />
          Away</label>
        <br />
      </p>
        <label></label>
      <label></label></td>
    </tr>
    <tr>
      <td>Opposition</td>
      <td><input name="txtopposition" type="text" id="txtopposition" size="20" /></td>
    </tr>
    <tr>
      <td>Stag Score</td>
      <td><input name="txtstag_score" type="text" id="txtstag_score" size="3" /></td>
    </tr>
    <tr>
      <td>Opposion Score</td>
      <td><input name="txtoppo_score" type="text" id="txtoppo_score" size="3" /></td>
    </tr>
    <tr>
      <td>Comment</td>
      <td><input name="txtcomment" type="text" id="txtcomment" size="120" /></td>
    </tr>
  </table>
  <p>
    <label></label>
    <label></label>
    <input name="btnSubmit" type="submit" id="btnSubmit" value="Submit" />
  </p>
</form>
</body>
</html>
