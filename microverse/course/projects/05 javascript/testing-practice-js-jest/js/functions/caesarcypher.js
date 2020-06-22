const caesar = (text, shift) => {
  text.toLowerCase();
  const actualShift = shift % 26;
  let cyphered = '';

  for (let i = 0; i < text.length; i += 1) {
    let code = text.charCodeAt(i);
    if (code >= 97 && code <= 122) {
      code += actualShift;
      if (code > 122) {
        code -= 26;
      }
    }
    cyphered += String.fromCharCode(code);
  }
  return cyphered;
};
module.exports = caesar;
