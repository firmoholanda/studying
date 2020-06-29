import Board from '../src/controller/board';

import Player from '../src/controller/player';

const newGameBoard = Board();
const player1 = Player('tom', 'X', true);
const player2 = Player('robert', 'O', false);

test('function must return current player', () => {
  expect(newGameBoard.currentPlayer(player1, player2)).toEqual(player1);
});

test('function must return current player 2', () => {
  newGameBoard.changeTurn(player1, player2);
  expect(newGameBoard.currentPlayer(player1, player2)).toEqual(player2);
});

test('player turn should Change', () => {
  newGameBoard.changeTurn(player1, player2);
  expect(player1.turn).toBe(true);
});
