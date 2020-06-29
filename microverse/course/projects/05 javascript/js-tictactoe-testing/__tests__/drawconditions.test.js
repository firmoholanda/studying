import Board from '../src/controller/board';

import Player from '../src/controller/player';

const newGameBoard = Board();
const player1 = Player('tom', 'X', true);
const player2 = Player('robert', 'O', false);

test('Draw condition should be true', () => {
  newGameBoard.setTile(player1, 0);
  newGameBoard.setTile(player1, 3);
  newGameBoard.setTile(player1, 4);
  newGameBoard.setTile(player1, 2);
  newGameBoard.setTile(player2, 1);
  newGameBoard.setTile(player2, 5);
  newGameBoard.setTile(player2, 6);
  newGameBoard.setTile(player2, 7);
  newGameBoard.setTile(player1, 8);
  expect(newGameBoard.checkDrawCondition()).toEqual(true);
});
