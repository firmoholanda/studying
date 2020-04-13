// https://www.codewars.com/kata/52774a314c2333f0a7000688/train/javascript

/* function validParentheses(parens) {
  let arr = []
  let count = 0

  if (parens == "") {return true}
  if (parens[0] == ")") { return false }

  parens.split("").forEach(function (i) {
    if (i == "(") {count += 1}
    if (i == ")") {count -= 1}
  })

  if (count == 0) {
    return true
  } else {
    return false
  }

*/

function validParentheses(parens) {
  var count = 0

  parens.split("").forEach(function (i) {
    if (count >= 0) {count += (i == '(') ? 1 : -1}
  })

  return (count == 0)

}


// ------------------------------------------------------------------------------------- #

//validParentheses("()")
//true

validParentheses("())" )
//false