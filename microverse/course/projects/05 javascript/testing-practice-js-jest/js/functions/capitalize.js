const capitalize = string => {
  const newString = string[0].toUpperCase() + string.slice(1);
  return newString;
};
module.exports = capitalize;
