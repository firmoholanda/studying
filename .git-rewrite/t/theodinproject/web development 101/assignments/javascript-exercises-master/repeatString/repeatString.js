const repeatString = function(str, times) {
    if (times < 0){
        return 'ERROR';
    }
    else{
        return str.repeat(times);
    }
}

module.exports = repeatString
