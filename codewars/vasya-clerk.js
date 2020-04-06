// https://www.codewars.com/kata/555615a77ebc7c2c8a0000b8/train/javascript

function tickets(peopleInLine) {  
  //let hisArr = peopleInLine.reduce((total, x) => (x == 2 ? total + 1 : total), 0);
  
  let cash = []
  cash.push(peopleInLine.filter((x) => x == 25).length);
  cash.push(peopleInLine.filter((x) => x == 50).length);
  cash.push(peopleInLine.filter((x) => x == 100).length);

  
  peopleInLine.forEach(item) {
    console.log(item)
  }

  //for (var i = 0; i < peopleInLine.length; ++i) {
    //if (peopleInLine[i] == 25)  { cash[0] -=1 };
    //if (peopleInLine[i] == 50)  { cash[1] -=1 };
    //if (peopleInLine[i] == 100) { cash[2] -=1 };
  //}

  //console.log(cash.filter((x) => x < 0).length);

  //console.log(cash)
}
// ------------------------------------------------------------------------------------- #

tickets([25, 25, 50])
// YES

//tickets([25, 100])
// NO

//tickets([25, 25, 50, 50, 100])
// NO
