
var start = confirm("would you like to play?");
var gameHistory = [];
var winner = "";
var playerSelection = "";
var computerSelection = "";
var playerWins = 0;
var computerWins = 0;

//---------------------------------------------------------------------------------------

function showHideElementDOM(type, classID) {
    //tipe: show, hide, togle
    var myElement = document.getElementById(classID);
    
    switch (type) {
        case "show":
            console.log("show");
            myElement.style.display = 'block';
            return 0;
        case "hide":
            console.log("hide");
            myElement.style.display = 'none';
            return 0;
        case "togle":
            console.log("togle");
            if (myElement.style.display === 'none') {
                myElement.style.display = 'block';
            } else {
                myElement.style.display = 'none';
            }
            return 0;
    }    
}
//---------------------------------------------------------------------------------------

function totalItemsInArray(item, arr) {
    var count = 0;
    for(var i = 0; i < arr.length; ++i){
        if(arr[i] == item)
            count++;
    }
    return count;
}
//---------------------------------------------------------------------------------------

function computerPlay() {
    var result = Math.floor(Math.random() * 3);;

    switch (result) {
        case 0:
            return "rock";
        case 1:
            return "paper";
        case 2:
            return "scissors";
    }

}
//---------------------------------------------------------------------------------------

function playerPlay(result) {
    playerSelection = result;
    startGame();
}
//---------------------------------------------------------------------------------------

function playRound(playerSelection, computerSelection) {

    if (playerSelection == computerSelection){
        console.log("the game was a tie");
        return ("t");
    }
    else if (playerSelection === 'paper' && computerSelection === 'rock'){
        console.log("you win! paper beats rock");
        return ("p");
    }else if (playerSelection === 'rock' && computerSelection === 'scissors'){
        console.log("you win! rock beats scissors");
        return ("p");
    }else if (playerSelection === 'scissors' && computerSelection === 'rock'){
        console.log("you lose! rock beats scissors");
        return ("c");
    }else if (playerSelection === 'rock' && computerSelection === 'paper'){
        console.log("you lose! paper beats rock");
        return ("c");
    }else if (playerSelection === 'paper' && computerSelection === 'scissors'){
        console.log("you lose! scissors beats paper");
        return ("c");
    }else if (playerSelection === 'scissors' || computerSelection === 'paper'){
        console.log("you win! scissors beats paper");
        return ("p");
    }
    else{
        console.log("invalid input, please try again");
    }

}
//---------------------------------------------------------------------------------------

function startGame() {

    if (start) {
        
        if (gameHistory.length >= 5) {
            showHideElementDOM("hide", "buttons");

            if (playerWins == computerWins){
                winner = "its a tie";
            }
            else if (playerWins > computerWins){
                winner = "the player wins";
            }
            else {
                winner = "the computer wins";
            }

            alert(winner);

            return 0;  //end game
        }
        else{

            computerSelection = computerPlay();

            result = playRound(playerSelection, computerSelection);
            gameHistory.push(result);

            playerWins += totalItemsInArray("p", gameHistory);
            computerWins += totalItemsInArray("c", gameHistory);
            
            //display totalGames
            var totalGamesDiv = document.getElementById('totalGames');
            totalGamesDiv.innerHTML = gameHistory.length;

            //display gameHistory
            var totalGamesDiv = document.getElementById('gameHistory');
            totalGamesDiv.innerHTML = gameHistory;

            //display ties
            var tiesDiv = document.getElementById('ties');
            tiesDiv.innerHTML = totalItemsInArray("t", gameHistory);
            
            //display player score
            var pScoreDiv = document.getElementById('pScore');
            pScoreDiv.innerHTML = playerWins;

            //display computer score
            var cScoreDiv = document.getElementById('cScore');
            cScoreDiv.innerHTML = computerWins;

        }
    
    }
        
}