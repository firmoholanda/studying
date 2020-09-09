# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

# old version with recursion and cache
#@cache = [0,1]
#def fib(n)
#  return @cache[n] if @cache[n]
#  @cache[n] = fib(n-1) + fib(n-2)
#end

#def fib(n)
#  phi = (Math.sqrt(5) + 1) / 2
#  return ((phi**n) / Math.sqrt(5)).round
#end

def fibEven(n)

  # creates fibonacci array
  my_fib = [0, 1]
  (2..n).each do |i|
    (my_fib[-1] > n) ? break : my_fib.push(my_fib[i-1] + my_fib[i-2])    
  end

  # remove item if greater than n (need work)
  my_fib.each do |i|
    my_fib.pop if (i > n)
  end

  # select even numbers
  my_fib_even = []
  my_fib.map { |i| my_fib_even.push(i) if i.even? }

  return my_fib_even.sum

end

puts fibEven(100)

#puts i
#puts fib(10)