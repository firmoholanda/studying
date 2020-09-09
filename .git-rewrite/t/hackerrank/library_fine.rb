#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/library-fine

def libraryFine(d1, m1, y1, d2, m2, y2)

  day_due = d1 - d2
  month_due = m1 - m2
  year_due = y1 - y2

  if (day_due > 0) && ( (year_due && month_due) == 0)
    fee = day_due * 15
  elsif (month_due > 0) && ( year_due == 0)
    fee = month_due * 500
  elsif year_due > 0
    fee = 10000
  end

end

puts libraryFine(9, 7, 2015, 6, 6, 2015)
