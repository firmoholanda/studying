# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

# old version with recursion and cache
#@cache = [0,1]
#def fib(n)
#  return @cache[n] if @cache[n]
#  @cache[n] = fib(n-1) + fib(n-2)
#end

# fib number of index n
def fib(n)
  phi = (Math.sqrt(5) + 1) / 2
  return ((phi**n) / Math.sqrt(5)).round
end

# index of given fib number
def fib_of(n)
  phi = (Math.sqrt(5) + 1) / 2
  n == 0 ? 0 : ((Math.log(n) + (Math.log(5)/2) ) / Math.log(phi)).round
end

def fibEven(n)

  # creates fibonacci array
  my_fib = [0, 1]
  (2..n).each do |i|
    (my_fib[-1] > n) ? break : my_fib.push(my_fib[i-1] + my_fib[i-2])    
  end

  p my_fib

  # remove item if greater than n (need work)
  my_fib.each do |i|
    my_fib.pop if (i > n)
  end

  # select even numbers
  my_fib_even = []
  my_fib.map { |i| my_fib_even.push(i) if i.even? }

  p my_fib_even

  return my_fib_even.sum

end

def fibEven_version02(n)
  
  # initialize fib arr
  my_fib = [0, 1]

  (2..fib_of(n)).each do |i|
    my_fib.push(my_fib[i-1] + my_fib[i-2])
  end

  p my_fib

  #p fib_of(0)

end
# ------------------------------------------------------------------------------------- #

#puts fibEven(100)

fibEven_version02(100)

#puts fib_of(100)
