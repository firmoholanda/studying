// https://www.codewars.com/kata/556deca17c58da83c00002db/train/javascript
  
function tribonacci(signature, n) {
  fibo = []

  if (n == 1) { fibo[0] = signature[1] }
  if (n == 2) { fibo[0] = signature[1], fibo[1] = signature[2] }

  if (n >= 3) {
    fibo[0] = signature[0], fibo[1] = signature[1], fibo[2] = signature[2]

    for (let i = 2; i < n-1; i++) {
      fibo.push(fibo[i - 2] + fibo[i - 1] + fibo[i])
    }
  }

  console.log(fibo)
}
// ------------------------------------------------------------------------------------- #

//tribonacci([0, 0, 1], 10)
//[1,1,1,3,5,9,17,31,57,105]

tribonacci([1, 1, 1], 1)
//[1]

//tribonacci([300, 200, 100], 0)
//[]
