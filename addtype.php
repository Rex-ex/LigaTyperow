<!DOCTYPE HTML>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <title>UPDATE</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="Maro" />
  <link rel='stylesheet' href='style/main.css' type='text/css' />
</head>
<body>
<div class="wrapper">
<?php
if (isset($_POST['submit']) && ($_POST['pwd'] === 'dosia')){
  include('connect.php');
  	if ($conn == true){
  		echo "<div class='emo'><img src='img/emo_smile.jpg' alt='connect correct!'/></div>";
    } else {
  		echo "<div class='emo'><img src='img/emo_sad.png' alt='connect fail!' /></div>";
  		echo "<h4>Proszę poinformuj administratora!</h4>";
      die("Nie udalo sie polaczyc!. Blad: ".$conn->mysqli_connect_error);
  	}
  //base connect end
  //vars
  $player = $_POST['player_name'];
  $game_ID = $_POST['GID'];
  $home_type = $_POST['home'];
  $away_type = $_POST['away'];


  mysqli_query($conn, "set names utf8");

  $queryUPD_TYPES = "UPDATE ttypes
  SET ttypes.HomeType = '$home_type', ttypes.AwayType = '$away_type'
  WHERE ttypes.GameID = '$game_ID' AND ttypes.OwnerID = '$player';";

  $resultAP = mysqli_query($conn, $queryUPD_TYPES);

  echo "Dodano typ gracza: ".$player."<br />"
  ."o ID= ".$game_ID."<br />"
  ."Wynik: ".$home_type." : ".$away_type."<br />";
	 mysqli_close($conn);



}
?>

</div>
</body>
</html>
