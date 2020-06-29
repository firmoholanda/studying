import Board from '../src/controller/board';

import Player from '../src/controller/player';

const newGameBoard = Board();
const player1 = Player('tom', 'X', true);
const player2 = Player('robert', 'O', false);

test('player name should be tom', () => {
  expect(player1.name).toEqual('tom');
});

test('player name should be robert', () => {
  expect(player2.name).toEqual('robert');
});

test('board should have a null array', () => {
  expect(newGameBoard.tiles).toEqual([null, null, null, null, null, null, null, null, null]);
});

test('Draw condition should be false', () => {
  expect(newGameBoard.checkDrawCondition()).toEqual(false);
});

test('board should have first tile changed to X', () => {
  newGameBoard.setTile(player1, 0);
  expect(newGameBoard.tiles).toEqual(['X', null, null, null, null, null, null, null, null]);
});

test('Win condition should be false', () => {
  newGameBoard.setTile(player1, 0);
  expect(newGameBoard.checkWinCondition()).toEqual(false);
});

test('Win condition should be true for condition 1', () => {
  newGameBoard.setTile(player1, 0);
  newGameBoard.setTile(player1, 1);
  newGameBoard.setTile(player1, 2);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});
