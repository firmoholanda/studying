function add (a, b) {
	return a+b;
}

function subtract (a, b) {
	return a-b;
}

function sum (arr) {
	if (arr.length == 0 ) {
		return 0;
	} else {
		return arr.reduce((a, b) => a + b);
	}
}

function multiply (arr) {
	return arr.reduce(Math.imul);
}

function power(a, b) {
	return Math.pow(a,b);
}

function factorial(num) {
	if (num === 0)
      { return 1; }
    else
      { return num * factorial( num - 1 ); }
	
}

module.exports = {
	add,
	subtract,
	sum,
	multiply,
    power,
	factorial
}

//console.log(add(0,0));
//console.log( sum([1,3,5,7,9]) );
//console.log( multiply([1,2]) );
//console.log( power([4,3]) );

//console.log( factorial(0) );
console.log( sum([]) );