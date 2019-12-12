# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)
end

def fibEven(n)

  i = 0
  while fib(i+1) <= n do
    my_arr = (2..i+1).map { |x| fib(x) }
    my_arr_even = []
    my_arr.map { |i| my_arr_even.push(i) if i.even? }
    i += 1
  end

  #puts i
  #puts fib(i)
  #puts my_arr
  puts my_arr_even
  puts "result: " + my_arr_even.sum.to_s
end

fibEven(100)

#puts fib(100)