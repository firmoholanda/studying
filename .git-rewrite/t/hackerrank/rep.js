
function repeatedString(s, n) {
  let arrLenth = s.length;
  let aCount = 0;
  let mod = 0;

  for (i = 0; i < s.length; i++) {
    if (s[i] == "a") {
      aCount++
    }
  }

  mod = n % arrLenth;
  
  return (mod);
}

//-------------------------------------------------
const s = "aba";
const n = 10;

let result = repeatedString(s, n);
