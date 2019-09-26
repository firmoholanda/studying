const sumAll = function(n1, n2) {

    //if any number is not a number
    if ( (typeof n1 != "number") || (typeof n2 != "number") ) {
        return "ERROR";
    }
    //if any number is negative
    if ( (n1 * n2) < 0 ) {
        return "ERROR";
    }
    //if any number are equal
    else if (n1 == n2) {                    
        return n1;
    }
    //left < right, recursion up
    else if (n1 < n2) {
        return n1 + sumAll(n1+1, n2);
    }
    //left > right, recursion down
    else {
        return n1 + sumAll(n1-1, n2);
    } 

}

module.exports = sumAll


console.log( sumAll(10, "10") );