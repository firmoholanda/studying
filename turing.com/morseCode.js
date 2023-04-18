// given a string morsecode that contains a list of '.' and '-'. you are allowed to make one move and replace tow consecutive '..' with '--'
// return all possible morse codes you can get afther a single move you do to the string morsecode
// if you cannot do any moves, just return an empty array

// example 1:
// morsecode = '....'
// output = ['--..', '.--.', '..--']

// solution 1:
function morseCode(morsecode) {
  let result = [];
  let i = 0;
  while (i < morsecode.length) {
    if (morsecode[i] === '.' && morsecode[i + 1] === '.') {
      result.push(morsecode.slice(0, i) + '--' + morsecode.slice(i + 2));
      i += 2;
    } else {
      i++;
    }
  }
  return result;
}

const res = morseCode('....');
console.log(res);
