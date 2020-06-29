const arrayAnalysis = (arr) => ({
  average: Math.floor(arr.reduce((sum, num) => sum + num) / arr.length),
  min: Math.min(...arr),
  max: Math.max(...arr),
  length: arr.length,
});

module.exports = arrayAnalysis;
