// given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
// An input string is valid if:
// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// 
// 
// Example 1:
// Input:  s = "()"
// Output:  true
// 
// Example 2:
// Input:  s = "()[]{}
// An input string is valid if:
// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.

function isValid(s: string): boolean {
  const stack: string[] = [];
  const map = new Map([
    ['(', ')'],
    ['{', '}'],
    ['[', ']'],
  ]);

  for (let i = 0; i < s.length; i++) {
    if (map.has(s[i])) {
      stack.push(s[i]);
    } else {
      if (map.get(stack.pop()) !== s[i]) {
        return false;
      }
    }
  }

  return stack.length === 0;
}

const res = isValid('()[]{}');

console.log('res', res);