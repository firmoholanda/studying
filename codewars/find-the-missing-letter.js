// https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/javascript

function findMissingLetter(arr) {

  codeArr = []
  arr.map( c => codeArr.push(c.charCodeAt()) )
  
  for (let i = 1; i < arr.length; i++) {
    if ( (codeArr[i] - codeArr[i - 1]) > 1 ) {
      console.log(String.fromCharCode(codeArr[i] - 1))
    }
  }

}
// ------------------------------------------------------------------------------------- #

//findMissingLetter(['a', 'c'])
// 'e'

findMissingLetter(['a', 'b', 'c', 'd', 'f'])
// 'e'

//findMissingLetter(['O', 'Q', 'R', 'S'])
// 'e'