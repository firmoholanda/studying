# https://leetcode.com/problems/add-two-numbers/
# https://www.rubyguides.com/2017/08/ruby-linked-list/
# https://stackoverflow.com/questions/18618447/best-linked-list-in-ruby-without-extending-array

class ListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @head = nil
    @next = nil
  end

  def append(value)
    if @head
      find_tail.next = ListNode.new(value)
    else
      @head = ListNode.new(value)
    end
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def to_a
    node = @head
    arr = []
    arr.push(node.value)
    while (node = node.next)
      arr.push(node.value)
    end
    return arr
  end

end

# ------------------------------------------------------------------------------------- #

def add_two_numbers(l1, l2)
  
  #return_list = ListNode.new

  p l1.to_a
  p l1.to_a.join.to_i + l2.to_a.join.to_i

end
# ------------------------------------------------------------------------------------- #

l1 = ListNode.new("list01")
l1.append(3)
l1.append(4)
l1.append(2)

l2 = ListNode.new("list02")
l2.append(4)
l2.append(6)
l2.append(5)

add_two_numbers(l1, l2)
