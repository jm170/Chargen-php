<?php
session_start();
$given = $surname = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $given = test_input($_POST["given"]);
  $surname = test_input($_POST["surname"]);
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2>Do you want to save your character? Give them a name!</h2>
<form method="post" action="build.php">  
  Given Name:  <input type="text" name="given">
  <br><br>
  Surname:     <input type="text" name="surname">
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>