

# creates a historygram into a hash
my_hash = a.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}