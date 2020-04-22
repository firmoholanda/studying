// https://www.codewars.com/kata/513e08acc600c94f01000001/train/javascript

function rgb(r, g, b) {

  //var args = Array.prototype.slice.call(arguments)
  //args.forEach(function (i) {
  //  console.log( Math.min(Math.max(parseInt(i), 0), 255) )
  //})

  //if (r < 0) { r = 0 } if (r > 255) { r = 255 }
  //if (g < 0) { g = 0 } if (g > 255) { g = 255 }
  //if (b < 0) { b = 0 } if (b > 255) { b = 255 }

  r = Math.min(Math.max(r, 0), 255)
  g = Math.min(Math.max(g, 0), 255)
  b = Math.min(Math.max(b, 0), 255)

  console.log( ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1).toUpperCase() )
}
// ------------------------------------------------------------------------------------- #

//rgb(0, 0, 0)
// 000000

rgb(300, 255, 255)
// FFFFFF

//rgb(173, 255, 47)
// ADFF2F