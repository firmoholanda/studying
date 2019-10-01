
function totalItemsInArray(item, arr) {
    var count = 0;
    for(var i = 0; i < arr.length; ++i){
        if(arr[i] == item)
            count++;
    }
    return count;
}

function consoleLogToDOM(classID, domTag) {
    // Overriding console object
    const console = {};

    // Getting div to insert logs
    const logger = document.getElementById(classID);

    // Adding log method from our console object
    console.log = text =>
    {
        const element = document.createElement(domTag);
        const txt = document.createTextNode(text);

        //logger.textContent = "";

        element.appendChild(txt);
        logger.appendChild(element);
    }
}

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

function playerPlay(result) {
    return result;
}


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

function game(selected, times){
    let gameHistory = [];
    let winner = "";

    //for(var i=0; i < times; i++){
        const playerSelection = playerPlay(selected)
        const computerSelection = computerPlay()
        result = playRound(playerSelection, computerSelection);
        gameHistory.push(result)
    //}
    
    const ties = totalItemsInArray("t", gameHistory);
    const playerWins = totalItemsInArray("p", gameHistory);
    const computerWins = totalItemsInArray("c", gameHistory);

    if (playerWins == computerWins){
        winner = "its a tie";
    }
    else if (playerWins > computerWins){
        winner = "the player wins";
    }
    else {
        winner = "the computer wins";
    }

    //clear div container
    document.getElementById("container").innerHTML =   "";
    
    document.getElementById("container").innerHTML +=   "<br>you: " + playerSelection +
                                                        "<br>computer: " + computerSelection;


    //write to div container
    document.getElementById("container").innerHTML +=   "<br>ties         : " + ties            +
                                                        "<br>player   wins: " + playerWins      +
                                                        "<br>computer wins: " + computerWins    +
                                                        "<br>result       : " + winner;

    //console.log("-----------------------------");
    //console.log("ties         : " + ties );
    //console.log("player   wins: " + playerWins );
    //console.log("computer wins: " + computerWins );
    //console.log("result       : " + winner);

}
//---------------------------------------------------------------------------------------

// play the game        
//game(5);

