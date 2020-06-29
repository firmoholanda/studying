const Board = (() => {
  const tiles = [null, null, null, null, null, null, null, null, null];

  const checkWinCondition = () => {
    let isWin = false;
    if (tiles[0] != null && tiles[0] === tiles[1] && tiles[1] === tiles[2]) isWin = true;
    if (tiles[3] != null && tiles[3] === tiles[4] && tiles[4] === tiles[5]) isWin = true;
    if (tiles[6] != null && tiles[6] === tiles[7] && tiles[7] === tiles[8]) isWin = true;
    if (tiles[0] != null && tiles[0] === tiles[3] && tiles[3] === tiles[6]) isWin = true;
    if (tiles[1] != null && tiles[1] === tiles[4] && tiles[4] === tiles[7]) isWin = true;
    if (tiles[2] != null && tiles[2] === tiles[5] && tiles[5] === tiles[8]) isWin = true;
    if (tiles[0] != null && tiles[0] === tiles[4] && tiles[4] === tiles[8]) isWin = true;
    if (tiles[6] != null && tiles[6] === tiles[4] && tiles[4] === tiles[2]) isWin = true;
    return isWin;
  };

  const checkDrawCondition = () => {
    let isDraw = true;
    if (tiles.includes(null)) {
      isDraw = false;
    }
    return isDraw;
  };

  const setTile = (player, index) => {
    tiles[index] = player.token;
    return true;
  };

  const currentPlayer = (player1, player2) => {
    if (player1.turn === true) {
      return player1;
    }
    return player2;
  };

  const changeTurn = (player1, player2) => {
    [player1.turn, player2.turn] = [player2.turn, player1.turn];
  };

  return {
    tiles,
    checkWinCondition,
    checkDrawCondition,
    setTile,
    currentPlayer,
    changeTurn,
  };
});

export default Board;
