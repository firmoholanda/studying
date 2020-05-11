const Board = function () {
  const gameOverText = document.querySelector(".winner-text");
  const infoText = document.querySelector(".info");

  // add click event listeners
  const initCells = () => {
    [...cells].forEach(cell => {
      cell.textContent = "";
      cell.addEventListener("click", handleClick);
    });
  };

  // removes click event listeners
  const deinitCells = () => {
    [...cells].forEach(cell => cell.removeEventListener("click", handleClick));
  };

  // update info text
  const setInfoText = text => {
    infoText.textContent = text;
  };

  // update current player info text
  const updateCurrentPlayer = player => {
    setInfoText(`${player} 's move`);
  };

  // end game and remove all eventes on board cells
  function endGame(draw) {
    if (draw) {
      gameOverText.textContent = `no one wins...`;
      setInfoText("game was a draw!");
    } else {
      gameOverText.textContent = `${currentPlayerName} wins!`;
      setInfoText("game over!");
    }
    deinitCells();
  };

  return { initCells, updateCurrentPlayer, endGame };
  
};

const board = Board();
const cells = document.querySelectorAll(".cell");
const winningCombinations = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
];

// ----------------------------------------------------------------------------------- //

let currentCells = [];
let currentPlayer = "";
let player01Name = "";
let player02Name = "";

function startGame() {
  player01Name = document.getElementById("player01Name").value;
  player02Name = document.getElementById("player02Name").value;

  currentCells = Array.from(Array(9).keys());
  currentPlayer = "X";
  currentPlayerName = player01Name;
  board.updateCurrentPlayer(currentPlayerName);
  board.initCells();
}

function handleClick() {
  const cell = event.target;
  const id = cell.dataset.id;
  if (isCellValid(id)) {
    cell.textContent = currentPlayer;
    currentCells[id] = currentPlayer;
    if (checkWin()) {
      board.endGame(false);
    } else if (checkDraw()) {
      board.endGame(true);
    }
    else {
      togglePlayer();
    }
  }
}

function isCellValid(id) {
  return currentCells[id] == id;
}

function togglePlayer() {
  currentPlayer = currentPlayer === "X" ? "O" : "X";
  currentPlayerName = currentPlayer === "X" ? player01Name : player02Name;
  board.updateCurrentPlayer(currentPlayerName);
}

function checkWin() {
  for (let i = 0; i < winningCombinations.length; i++) {
    let pattern = winningCombinations[i];
    let [a, b, c] = pattern;
    if ( currentCells[a] === currentCells[b] && currentCells[b] === currentCells[c] ) {
      return true;
    }
  }
  return false;
}

function checkDraw() {
  return currentCells.every(function (element) { return typeof element === 'string'; })
}
