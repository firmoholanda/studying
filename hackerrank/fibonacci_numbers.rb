# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

# old version with recursion and cache
#@cache = [0,1]
#def fib(n)
#  return @cache[n] if @cache[n]
#  @cache[n] = fib(n-1) + fib(n-2)
#end

def fib(n)
  phi = (Math.sqrt(5) + 1) / 2
  return ((phi**n) / Math.sqrt(5)).round
end

def fibEven(n)
  i = 0
  while fib(i) <= n do
    i += 1
  end
  my_arr = (1..i-1).map { |x| fib(x) }
  my_arr_even = []
  my_arr.map { |i| my_arr_even.push(i) if i.even? }

  #puts my_arr
  #puts my_arr_even

  return my_arr_even.sum
end

puts fibEven(100)

#puts i
#puts fib(10)