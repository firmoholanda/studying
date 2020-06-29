import Board from '../src/controller/board';

import Player from '../src/controller/player';

const newGameBoard = Board();
const player1 = Player('tom', 'X', true);

test('draw condition should be false for condition 1', () => {
  expect(newGameBoard.checkDrawCondition()).toEqual(false);
});

test('Win condition should be true for condition 2', () => {
  newGameBoard.setTile(player1, 3);
  newGameBoard.setTile(player1, 4);
  newGameBoard.setTile(player1, 5);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 3', () => {
  newGameBoard.setTile(player1, 6);
  newGameBoard.setTile(player1, 7);
  newGameBoard.setTile(player1, 8);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 4', () => {
  newGameBoard.setTile(player1, 0);
  newGameBoard.setTile(player1, 3);
  newGameBoard.setTile(player1, 6);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 5', () => {
  newGameBoard.setTile(player1, 1);
  newGameBoard.setTile(player1, 4);
  newGameBoard.setTile(player1, 7);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 6', () => {
  newGameBoard.setTile(player1, 2);
  newGameBoard.setTile(player1, 5);
  newGameBoard.setTile(player1, 8);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 7', () => {
  newGameBoard.setTile(player1, 0);
  newGameBoard.setTile(player1, 4);
  newGameBoard.setTile(player1, 8);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});

test('Win condition should be true for condition 8', () => {
  newGameBoard.setTile(player1, 2);
  newGameBoard.setTile(player1, 4);
  newGameBoard.setTile(player1, 6);
  expect(newGameBoard.checkWinCondition()).toEqual(true);
});
