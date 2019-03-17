<!DOCTYPE HTML>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <title>UPDATE POINTS</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="Maro" />
  <link rel='stylesheet' href='style/main.css' type='text/css' />
</head>
<body>
<div class="wrapper">

<?php
if(isset($_POST['UPD_types']) && $_POST['pwd'] === 'dosia'){
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

$Players = array('Michał', 'Maro', 'Szczupi', 'Micz', 'Marta', 'Rysiu');

$queryGamesCount = 'SELECT COUNT(IDGame)
 from tgame
 WHERE GameResult IS NOT NULL';

$resultGC = mysqli_query($conn, $queryGamesCount);
$rowGC = mysqli_fetch_assoc($resultGC);
// echo "Ilość meczy: ".$rowGC['COUNT(IDGame)'];

$numGamesEnd = $rowGC['COUNT(IDGame)'];



    function setPoints($ResH, $ResA, $TypeH, $TypeA){
      $pts;
      if ($ResH === $TypeH && $ResA === $TypeA){ //idealny wynik
        $pts = 2;
      }
      else if($ResH === $ResA && $TypeH === $TypeA){ //remis
        $pts = 1;
      }
      else if($ResH > $ResA && $TypeH > $TypeA){ //wygrał gospodarz
        $pts = 1;
      }
      else if($ResH < $ResA && $TypeH < $TypeA ){ //wygrał gość
        $pts = 1;
      } else {
        $pts = 0;
      }
      return $pts;
    };

    // $c=1;
    for($i = 1; $i<=$numGamesEnd; $i++){
      $queryGameResult = 'SELECT IDGame, HomeGoal, AwayGoal
      from tgame
      WHERE IDGame ='.$i;
      $resultGR = mysqli_query($conn, $queryGameResult);
      $rowGR = mysqli_fetch_assoc($resultGR);
      // echo "mecze nr: ".$i." gosp: ".$rowGR['HomeGoal']." gość ".$rowGR['AwayGoal'].'<br />';

      for($j = 0; $j<count($Players); $j++){

        $PlID = $Players[$j];
        $queryType = 'SELECT OwnerID, HomeType, AwayType FROM ttypes
        WHERE GameID = '.$i.' AND OwnerID= "'.$PlID.'"';

        $resultTU = mysqli_query($conn, $queryType);
        $rowTU = mysqli_fetch_assoc($resultTU);
        $pointsEarned = setPoints($rowGR['HomeGoal'], $rowGR['AwayGoal'], $rowTU['HomeType'], $rowTU['AwayType']);

        // echo 'Mecz nr: '.$rowGR['IDGame'].' Gracz: '.$rowTU['OwnerID'].' H: '.$rowTU['HomeType'].' A: '.$rowTU['AwayType'].' Ilość pkt: '.$pointsEarned.'<br />';
        $queryUpdatePoints = 'UPDATE ttypes
        SET PointesEarned = '.$pointsEarned.' WHERE GameID ='.$i.' AND OwnerID= "'.$PlID.'"';

        $resultUP = mysqli_query($conn, $queryUpdatePoints);

      }
    }
  echo 'udało się!';
  mysqli_close($conn);
} else {
  echo "Próba nieudana";
}
?>
</div>
</body>
</html>
