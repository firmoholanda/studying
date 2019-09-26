const removeFromArray = function(arr, item1, item2, item3, item4) {
    
    //console.log(item1);
    //console.log(item2);
    //console.log(item3);
    //console.log(item4);
    //console.log(typeof item4 == "undefined");

    let items = [];
    
    if (typeof item1 != "undefined") {items.push(item1);}
    if (typeof item2 != "undefined") {items.push(item2);}
    if (typeof item3 != "undefined") {items.push(item3);}
    if (typeof item4 != "undefined") {items.push(item4);}

    for (i = 0; i < items.length; i++) {

        console.log(arr.indexOf(items[i]));
        var index = arr.indexOf(items[i]);
        if (index > -1) {
            arr.splice(index, 1);
        }
    }
    return arr;
}


//---------------------------------------------------------------------------------------
module.exports = removeFromArray

console.log( removeFromArray([1, 2, 3, 4], 3, 4) );