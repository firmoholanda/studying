// https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/javascript

var maxSequence = function (arr) {

  // for negative and 0 lenth arr
  if (arr.every(i => i < 0) ) { console.log(0) }

  let sum = arr.reduce((a, b) => a + b, 0)
  //console.log(sum)

  arr.forEach((item) => {
    subArr = arr.shift()
    console.log(subArr)

    let sum = arr.reduce((a, b) => a + b, 0)
    //console.log(sum)
  })

}
// ------------------------------------------------------------------------------------- #

//maxSequence([])
// 0

maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
// 6
