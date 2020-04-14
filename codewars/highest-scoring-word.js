// https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/javascript

function high(x) {

  let wordCharCode = []
  let wordCharCodeSum = []
  let strWords = x.split(" ")

  strWords.forEach(function (i) {
    wordCharCode = i.split("").map(c => c.charCodeAt(0) - 96)
    wordCharCodeSum.push(wordCharCode.reduce((a, b) => a + b))
  })

  return strWords[wordCharCodeSum.indexOf(Math.max(...wordCharCodeSum))]

}
// ------------------------------------------------------------------------------------- #

high('man i need a taxi up to ubud')
//'taxi'


//console.log(i)