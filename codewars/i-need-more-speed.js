// https://www.codewars.com/kata/55de9c184bb732a87f000055

function reverse(arr) {
  
  copy = arr

  for (i = 0; i <= copy.length-1; i++) {
    arr[i] = copy[(copy.length - 1)-i]
  }

  console.log(arr)
  
}
// ------------------------------------------------------------------------------------- #

reverse([1, 2, 3, 4, 5])
// [5,4,3,2,1]

//reverse(['hello', 'world', 'how', 'are', 'you', '?'])
//