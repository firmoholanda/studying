const arrayAnalysis = require('../functions/arrayAnalysis');

test('array analysis should return correct values', () => {
  expect(arrayAnalysis([0, 1, 1, 2, 3, 5, 8, 13])).toEqual({
    average: 4,
    min: 0,
    max: 13,
    length: 8,
  });
});
