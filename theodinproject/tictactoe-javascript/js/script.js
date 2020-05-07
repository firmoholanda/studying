const UI = function () {
  const cells = document.querySelectorAll(".cell");
  const gameOverPopup = document.querySelector(".result");
  const gameOverPopupText = document.querySelector(".winner-text");
  const btnClosePopup = document.querySelector(".close");
  const infoText = document.querySelector(".info");

  // Empties cell contexts and hooks click listeners
  const initCells = () => {
    [...cells].forEach(cell => {
      cell.textContent = "";
      cell.addEventListener("click", handleClick);
    });
  };

  // Removes click listeners of cells
  const deinitCells = () => {
    [...cells].forEach(cell => cell.removeEventListener("click", handleClick));
  };

  const endGame = () => {
    setInfoText("GAME OVER!");
    deinitCells();
    showGameOverPopup();
  };

  // Updates info text with given text
  const setInfoText = text => {
    infoText.textContent = text;
  };

  // Updates info text with current player info
  const updateCurrentPlayer = player => {
    setInfoText(`${player} will make a move`);
  };

  // Makes game over popup visible
  const showGameOverPopup = () => {
    gameOverPopupText.textContent = `${currentPlayer} WINS!`;
    gameOverPopup.style.display = "block";
  };

  // Makes game over popup hidden
  const hideGameOverPopup = () => {
    gameOverPopup.style.display = "none";
  };

  // Makes given cell blink to indicate invalid move
  const blinkCell = cell => {
    cell.style.animation = "blink .6s 2";
    setTimeout(() => (cell.style.animation = ""), 1200);
  };

  btnClosePopup.onclick = hideGameOverPopup;
  return { initCells, updateCurrentPlayer, blinkCell, endGame };
};

const ui = UI();
const winningPatterns = [
  // Horizontal
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  // Vertical
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  // Diagonal
  [0, 4, 8],
  [6, 4, 2]
];

let currentCells = [];
let currentPlayer = "";

function startGame() {
  currentCells = Array.from(Array(9).keys());
  currentPlayer = "X";
  ui.updateCurrentPlayer(currentPlayer);
  ui.initCells();
}

function handleClick() {
  const cell = event.target;
  const id = cell.dataset.id;
  if (isCellValid(id)) {
    cell.textContent = currentPlayer;
    currentCells[id] = currentPlayer;
    if (checkWin()) ui.endGame();
    else togglePlayer();
  } else {
    ui.blinkCell(cell);
  }
}

function isCellValid(id) {
  return currentCells[id] == id;
}

function togglePlayer() {
  currentPlayer = currentPlayer === "X" ? "O" : "X";
  ui.updateCurrentPlayer(currentPlayer);
}

function checkWin() {
  for (let i = 0; i < winningPatterns.length; i++) {
    let pattern = winningPatterns[i];
    let [a, b, c] = pattern;
    if (
      currentCells[a] === currentCells[b] &&
      currentCells[b] === currentCells[c]
    ) {
      return true;
    }
  }
  return false;
}