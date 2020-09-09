function chunkArrayInGroups(arr, size) {
    // Break it up.
    var chunks = [],
    i = 0,
    n = arr.length;

    while (i < n) {
        chunks.push(arr.slice(i, i += size));
    }

    return chunks;
}

console.log (chunkArrayInGroups(["a", "b", "c", "d"], 2) );
