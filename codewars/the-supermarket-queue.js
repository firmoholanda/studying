// https://www.codewars.com/kata/57b06f90e298a7b53d000a86/train/javascript

function queueTime(customers, n) {
  let cashierQueue = []

  // push to the queue
  for (var i = 0; i < n; i++) {
    cashierQueue.push(customers[0])
    customers.shift()
  }
  console.log(cashierQueue)

  // find fastest client attended
  var minIndex = cashierQueue.reduce(function (minIndex, element, index, array) {
    return element < array[minIndex] ? index : minIndex;
  }, 0);

  // execute queue
  for (var i = 0; i < n; i++) {
    cashierQueue[i] -= Math.min(...cashierQueue)
  }
  console.log(cashierQueue)


  console.log(minIndex)

  //console.log(Math.min(...cashierQueue))

  //customers.forEach(function (i) {
    //console.log(i)
  //})

}
// ------------------------------------------------------------------------------------- #

queueTime([10, 2, 3, 3], 2)
//10

//queueTime([2, 2, 3, 3, 4, 4], 2)
//9

//queueTime([2, 3, 10], 2)
//12

//queueTime([], 1)
//0

//queueTime([1, 2, 3, 4], 1)
//10

//queueTime([2, 2, 3, 3, 4, 4], 2)
//9

//queueTime([1, 2, 3, 4, 5], 100)
//5