const caesar = require('../functions/caesaruncypher');

test('should uncypher something', () => {
  expect(caesar('uftu', 1)).toEqual('test');
});
test('should uncypher the alphabet', () => {
  expect(caesar('bcdefghijklmnopqrstuvwxyza', 1)).toEqual('abcdefghijklmnopqrstuvwxyF');
});
test('should not uncypher number', () => {
  expect(caesar('123', 1)).toEqual('123');
});
