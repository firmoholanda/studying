def pageCount(n, p)
  turns = n / 2
  tRight = p / 2
  tLeft = turns - tRight

  tRight < tLeft ? tRight : tLeft
end

#n = number of pages
#p = page to go
puts pageCount(15, 4)