// https://www.codewars.com/kata/5264d2b162488dc400000001/train/javascript

function spinWords(str) {

  let words = str.split(" ");
  let answer = []

  for (let i = 0; i < words.length; i++) {
    if (words[i].length >= 5) {
      answer.push(words[i].split("").reverse().join(""));
    } else {
      answer.push(words[i]);
    }
  }

  //console.log(answer.join(" "));
  
}
// ------------------------------------------------------------------------------------- #
spinWords("Welcome")
//"emocleW"

//spinWords("Hey fellow warriors")
//"Hey wollef sroirraw"