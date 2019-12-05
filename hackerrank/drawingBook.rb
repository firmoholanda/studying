def pageCount(n, p)
  turns = n / 2
  tRight = p / 2
  tLeft = turns - tRight

  if tRight < tLeft
    return tRight
  else 
    return tLeft
  end

end

#n = number of pages
#p = page to go
puts pageCount(5, 4)