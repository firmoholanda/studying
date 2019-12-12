# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)
end

def fibEven(n)
  i = 0
  while fib(i+1) <= n do
    i += 1
  end
  my_arr = (2..i+1).map { |x| fib(x) }
  my_arr_even = []
  my_arr.map { |i| my_arr_even.push(i) if i.even? }

  return my_arr_even.sum
end

puts fibEven(100)
#puts i
  #puts fib(i)
  #puts my_arr