const reverseString = require('../functions/reverseString');

test('reverseString should reverse the string', () => {
  expect(reverseString('hello')).toBe('olleh');
});