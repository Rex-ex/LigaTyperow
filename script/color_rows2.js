var table = document.getElementById('table1');
var table_Num_ofRows = table.getElementsByTagName('tr').length - 1;
// alert(table_Num_ofRows);
var i = '';

for (i=1; i<=table_Num_ofRows; i++){
  var gameResult = document.getElementById('W' + i).textContent;
  if (gameResult == "--- : ---"){continue;};

  // var gameID = document.getElementById('M' + i);????

  gameResult = gameResult.split(" : ");
  var ResultH = Number(gameResult[0]);
  var ResultA = Number(gameResult[1]);

//end column ID, Result

  var P1ResultEl = document.getElementById('G' + i);
  var P2ResultEl = document.getElementById('R' + i);
  var P3ResultEl = document.getElementById('A' + i);

  var P1Result = P1ResultEl.textContent;
  var P2Result = P2ResultEl.textContent;
  var P3Result = P3ResultEl.textContent;


  P1Result = P1Result.split(" : ");
  var P1H = Number(P1Result[0]);
  var P1A = Number(P1Result[1]);

  P2Result = P2Result.split(" : ");
  var P2H = Number(P2Result[0]);
  var P2A = Number(P2Result[1]);

  P3Result = P3Result.split(" : ");
  var P3H = Number(P3Result[0]);
  var P3A = Number(P3Result[1]);

  function addClass(el, ResH, ResA, PlH, PlA){
    if (ResH == PlH && ResA == PlA){ //idealny wynik
      el.className = "gold";
    }
    else if(ResH == ResA && PlH == PlA){ //remis
      el.className = "green";
    }
    else if(ResH > ResA && PlH > PlA ){ //wygrał gospodarz
      el.className = "green";
    }
    else if(ResH < ResA && PlH < PlA ){ //wygrał gość
      el.className = "green";
    } else {
      el.className = "grey";
    }
  }

  addClass(P1ResultEl, ResultH, ResultA, P1H, P1A);
  addClass(P2ResultEl, ResultH, ResultA, P2H, P2A);
  addClass(P3ResultEl, ResultH, ResultA, P3H, P3A);

}
