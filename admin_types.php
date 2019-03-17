<!DOCTYPE HTML>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <title>Typy - Liga Typerów 2018</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <META NAME="robots" CONTENT="noindex,nofollow">
  <meta name="description" content="" />
  <meta name="author" content="Maro" />
  <link rel='stylesheet' href='style/main.css' type='text/css' />
</head>
<body>
<div class="wrapper">
  <?php
  //base connect
  include('connect.php');
  	if ($conn == true){
  		echo "<div class='emo'><img src='img/emo_smile.jpg' alt='connect correct!'/></div>";
    } else {
  		echo "<div class='emo'><img src='img/emo_sad.png' alt='connect fail!' /></div>";
  		echo "<h4>Proszę poinformuj administratora!</h4>";
      die("Nie udalo sie polaczyc!. Blad: ".$conn->mysqli_connect_error);
  	}
  //base connect end
  //query
  mysqli_query($conn, "set names utf8");



?>
<div id="table_container">
  <form action="addtype.php" method="post">

  <!-- SELCET1 -->
    <label>Player:
    <select id="PLAYER" name="player_name">
<?php
$queryALL_PLAYERS = "SELECT Nick FROM tplayers;";
$resultAP = mysqli_query($conn, $queryALL_PLAYERS);
  while ($rowAP = mysqli_fetch_assoc($resultAP)) {
      echo "<option>".$rowAP["Nick"]."</option>";
}
?>
    </select>
    </label>
  <br />
  <br />
<!-- SELECT1-END -->

<!-- SELECT2 -->
    <label>GameID:
    <select id="GID" name="GID">
<?php
$queryGAME_ID = "SELECT tgame.IDGame, tgame.HomeTeam, tgame.AwayTeam
FROM tgame
Order by tgame.IDGame;";
$resultGID = mysqli_query($conn, $queryGAME_ID);
  while ($rowGID = mysqli_fetch_assoc($resultGID)) {
      echo "<option value=".$rowGID["IDGame"].">".$rowGID["IDGame"].".  ".$rowGID["HomeTeam"]." : ".$rowGID["AwayTeam"]."</option>";
}
mysqli_close($conn);
?>
  </select>
  </label>
  <br />
<!-- SELECT2-END -->
<!-- INPUT HOME -->
    <label>HOME:
      <input id="HOME" type="number" name="home" value="0" min="0">
    </label>
<!-- INPUT HOME - END -->
<!-- INPUT HOME -->
    <label>AWAY:
      <input id="AWAY" type="number" name="away" value="0" min="0">
    </label>
<!-- INPUT HOME - END -->
<!-- PWD -->
    <label for="pwd">PWD:</label>
    <input type="password" name="pwd">
    <br />

    <br />
    <br />
    <br />
    <input type="submit" name="submit" value="Zatwierdź">
</form>




</div>

</div>
</body>
</html>
