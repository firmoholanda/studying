const caesar = require('../functions/caesarcypher');

test('should cypher something', () => {
  expect(caesar('test', 1)).toEqual('uftu');
});
test('should cypher the alphabet', () => {
  expect(caesar('abcdefghijklmnopqrstuvwxyz', 1)).toEqual('bcdefghijklmnopqrstuvwxyza');
});
test('should not cypher number', () => {
  expect(caesar('123', 1)).toEqual('123');
});
