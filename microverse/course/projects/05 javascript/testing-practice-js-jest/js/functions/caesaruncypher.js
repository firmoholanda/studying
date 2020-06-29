const decypher = (text, shift) => {
  text.toLowerCase();
  const actualShift = shift % 26;
  let uncyphered = '';

  for (let i = 0; i < text.length; i += 1) {
    let code = text.charCodeAt(i);
    if (code >= 97 && code <= 122) {
      code -= actualShift;
      if (code < 97) {
        code -= 26;
      }
    }
    uncyphered += String.fromCharCode(code);
  }
  return uncyphered;
};
module.exports = decypher;
