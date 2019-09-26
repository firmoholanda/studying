
function round(value, precision) {
    var multiplier = Math.pow(10, precision || 0);
    return Math.round(value * multiplier) / multiplier;
}

const ftoc = function(temp) {
    const result = (temp - 32) * (5/9);
    return  round(result, 1);
}

const ctof = function(temp) {
    const result = (temp * 9/5) + 32 ;
    return round(result, 1);
}

module.exports = {
  ftoc,
  ctof
}
//---------------------------------------------------------------------------------------

//console.log(ftoc(32) );
console.log( ctof(73.2) );