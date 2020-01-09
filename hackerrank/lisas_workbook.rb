#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/lisa-workbook

def workbook(n, k, arr)

  pages = 0
  cur_page = 0
  page = []

  arr.each do |i|
    pages += (i / k)
    if (i.to_f / k) - (i / k) > 0 then pages += 1 end
    
    #p pages
    cur_prob_list = []
    pages.times do |p|
      i.times do |prob|
        cur_prob_list.push(prob+1)
        page[cur_page] = [cur_prob_list]
        #if prob+1 > k

        #end
      end
      #p cur_prob_list
      cur_page += 1
      cur_prob_list = []
    end
    pages = 0

  end

  #p page[0]

end
# ------------------------------------------------------------------------------------- #

workbook(5, 3, [4, 2, 6, 1, 10])