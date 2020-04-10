// https://www.codewars.com/kata/55c04b4cc56a697bb0000048

function scramble(str1, str2) {
  ans = true

  str2.split('').forEach(function (letter) {    
    if (str1.split('').some(c => c == letter) == false) { ans = false}
  });

  console.log(ans)

}
// ------------------------------------------------------------------------------------- #

scramble('rkqodlw','world')
//true

//scramble('', '')
//false
