const removeFromArray = function(arr, items) {
    
    for (i = 0; i < items.lenth; i++) {
        var index = arr.indexOf(items[i]);
        if (index > -1) {
            arr.splice(index, 1);
        }
        return arr;
    }

}

module.exports = removeFromArray
