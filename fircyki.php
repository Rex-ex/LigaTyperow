<!DOCTYPE HTML>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <title>Fircyki -Liga Typerów 2018</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <META NAME="robots" CONTENT="noindex,nofollow">
  <meta name="description" content="" />
  <meta name="author" content="Maro" />
  <link rel='stylesheet' href='style/main.css' type='text/css' />
  <link rel='stylesheet' href='style/flags.css' type='text/css' />
</head>
<body>
<div class="wrapper">
  <h1>Fircyki - Liga Typerów 2018</h1>
  <!-- <div class="flag flag-ws"></div> -->
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
  //query - show main table
  mysqli_query($conn, "set names utf8");

  $query1 = "SELECT tgame.Date, tgame.IDGame, tgame.HomeTeam as 'Gospodarze', tgame.AwayTeam as 'Gość',
  IFNULL(tgame.HomeGoal, '---') AS gol1, IFNULL(tgame.AwayGoal, '---') AS gol2
  FROM tgame
  ORDER BY tgame.IDGame; ";

  $result1 = mysqli_query($conn, $query1);

?>
  <div class="W60" style="overflow-x:auto;">
  <table id='table1'>
    <tr>
      <th class='HIDE'>Data</th>
      <th class='HIDE'>Mecz #</th>
      <th>Gospodarz</th>
      <th>Gość</th>
      <th>Wynik</th>
    </tr>
<?php
    $j=1;
  while ($row1 = mysqli_fetch_assoc($result1)) {
    $originalDate = $row1['Date'];
    $newDate = date("d-m-Y", strtotime($originalDate));
    $grey_row = '';
    if ($row1["gol1"] !== '---' ){
      $grey_row = 'grey';
    }
    echo "<tr class=".$grey_row.">"
      ."<td class='HIDE'>".$newDate."</td>"
      ."<td id=M".$j." class='HIDE'>".$row1["IDGame"]."</td>"
      ."<td>".$row1["Gospodarze"]."</td>"
      ."<td>".$row1["Gość"]."</td>"
      ."<td id=W".$j.">".$row1["gol1"]." : ".$row1["gol2"]."</td>"
      ."</tr>";
      $j++;
  }
?>
  </table>
  </div>
<!-- 2nd table -->
  <div class="W13">
  <table>
    <tr>
      <th>Szczupi
      <?php
      $queryPTS5 = 'SELECT SUM(`PointesEarned`) AS sumPTS
      FROM ttypes
      WHERE OwnerID = "Szczupi"';
      $resultPTS5 = mysqli_query($conn, $queryPTS5);
      $rowPTS5 = mysqli_fetch_assoc($resultPTS5);
      $pts5 = $rowPTS5['sumPTS'];
      echo '('.$pts5.')';
      echo ' </th>';
      echo '</tr>';

      ?>
    <?php
    $queryPL1 = "SELECT ttypes.HomeType, ttypes.AwayType
    FROM ttypes
    WHERE ttypes.OwnerID = 'Szczupi'
    ORDER BY ttypes.GameID;";

      $resultPL1 = mysqli_query($conn, $queryPL1);
      $k=1;
      while ($rowPL1 = mysqli_fetch_assoc($resultPL1)) {
        echo "<tr>"
          ."<td id=G".$k.">".$rowPL1["HomeType"]." : ".$rowPL1["AwayType"]."</td>"
          ."</tr>";
          $k++;
      }
    ?>
  </table>
  </div>
<!-- 2nd table END -->

<!-- 3rd table -->
  <div class="W13">
  <table>
    <tr>
      <th>Micz
      <?php
      $queryPTS6 = 'SELECT SUM(`PointesEarned`) AS sumPTS
      FROM ttypes
      WHERE OwnerID = "Micz"';
      $resultPTS6 = mysqli_query($conn, $queryPTS6);
      $rowPTS6 = mysqli_fetch_assoc($resultPTS6);
      $pts6 = $rowPTS6['sumPTS'];
      echo '('.$pts6.')';
      echo ' </th>';
      echo '</tr>';

      ?>
    <?php
    $queryPL2 = "SELECT ttypes.HomeType, ttypes.AwayType
    FROM ttypes
    WHERE OwnerID = 'Micz'
    ORDER BY ttypes.GameID;";

      $resultPL2 = mysqli_query($conn, $queryPL2);
      $l=1;
      while ($rowPL2 = mysqli_fetch_assoc($resultPL2)) {
        echo "<tr>"
          ."<td id=R".$l.">".$rowPL2["HomeType"]." : ".$rowPL2["AwayType"]."</td>"
          ."</tr>";
          $l++;
      }
    ?>
  </table>
  </div>
<!-- 3rd table END -->

<!-- 4rd table -->
  <div class="W13">
  <table>
    <tr>
      <th>Maro
      <?php
      $queryPTS7 = 'SELECT SUM(`PointesEarned`) AS sumPTS
      FROM ttypes
      WHERE OwnerID = "Maro"';
      $resultPTS7 = mysqli_query($conn, $queryPTS7);
      $rowPTS7 = mysqli_fetch_assoc($resultPTS7);
      $pts7 = $rowPTS7['sumPTS'];
      echo '('.$pts7.')';
      echo ' </th>';
      echo '</tr>';

      ?>
    <?php
    $queryPL3 = "SELECT ttypes.HomeType, ttypes.AwayType
    FROM ttypes
    WHERE OwnerID = 'Maro'
    ORDER BY ttypes.GameID;";

      $resultPL3 = mysqli_query($conn, $queryPL3);
      $m=1;
      while ($rowPL3 = mysqli_fetch_assoc($resultPL3)) {
        echo "<tr>"
          ."<td id=A".$m.">".$rowPL3["HomeType"]." : ".$rowPL3["AwayType"]."</td>"
          ."</tr>";
          $m++;
      }
      mysqli_close($conn);
    ?>
  </table>
  </div>
<!-- 4rd table END -->



<div class="clear"></div>
<script src="script/color_rows2.js"></script>
</div>
</body>
</html>
