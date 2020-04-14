// https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/javascript

function high(x) {

  let wordCharCode = []
  let wordCharCodeSum = []
  let wordsInStr = x.split(" ")

  wordsInStr.forEach(function (i) {
    wordCharCode = i.split("").map(c => c.charCodeAt(0) - 96)
    wordCharCodeSum.push(wordCharCode.reduce((a, b) => a + b))
  })

  return wordsInStr[wordCharCodeSum.indexOf(Math.max(...wordCharCodeSum))]

}
// ------------------------------------------------------------------------------------- #

high('man i need a taxi up to ubud')
//'taxi'
