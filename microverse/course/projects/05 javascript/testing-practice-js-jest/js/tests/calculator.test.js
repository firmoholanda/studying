const calculator = require('../functions/calculator');

test('3 + 7 should be equal to 10', () => {
  expect(calculator.add(3, 7)).toBe(10);
});

test('7 - 3 should be equal to 4', () => {
  expect(calculator.subtract(7, 3)).toBe(4);
});

test('15 / 3 should equal 5', () => {
  expect(calculator.divide(15, 3)).toBe(5);
});

test('3 * 5 should equal 15', () => {
  expect(calculator.multiply(3, 5)).toBe(15);
});
