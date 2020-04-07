// https://www.codewars.com/kata/555615a77ebc7c2c8a0000b8/train/javascript

function tickets(peopleInLine) {  
  

  peopleInLine.forEach(function (item) {
    let cash = [];
    cash.push(peopleInLine.filter((x) => x == 25).length)
    cash.push(peopleInLine.filter((x) => x == 50).length)
    cash.push(peopleInLine.filter((x) => x == 100).length)
    //console.log(cash)

    if (item == 50)  { cash[0] -=1 }
    if (item == 100) { cash[0] -=1, cash[1] -=1 }
    console.log(cash);
    console.log(cash.some(val => val <= 0) ? "NO" : "YES")
  })

  //console.log(cash)
  //console.log(cash.some(val => val < 0) ? "NO" : "YES")
}
// ------------------------------------------------------------------------------------- #

//tickets([50])
// no

//tickets([25, 25, 50])
// YES

//tickets([25, 100])
// NO

//tickets([25, 25, 50, 50, 100])
// NO

//tickets([25, 50, 25, 100, 25, 25, 50, 100, 25, 25, 25, 100, 25, 25, 25, 100, 25, 25, 25, 100, 25, 50, 50,50])
// NO

tickets([25, 50, 25, 100, 25])
