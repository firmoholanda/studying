#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/lisa-workbook

def workbook(n, k, arr)

  page = []
  cur_page = 0
  pages_in_chap = 0

  arr.each do |numb_of_probs|
    pages_in_chap += (numb_of_probs / k)
    if (numb_of_probs.to_f / k) - (numb_of_probs / k) > 0 then pages_in_chap += 1 end
    
    #p pages_in_chap
    cur_prob_list = []
    pages_in_chap.times do |p|
      numb_of_probs.times do |prob|
        cur_prob_list.push(prob+1)
        
        page[cur_page] = cur_prob_list

        if prob+1 > k
          cur_page += 1    
        end

      end
      
      #p cur_prob_list
      
      cur_prob_list = []
    end
    pages_in_chap = 0

  end

  p page

end
# ------------------------------------------------------------------------------------- #

workbook(5, 3, [4, 2, 6, 1, 10])