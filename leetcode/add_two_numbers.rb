# https://leetcode.com/problems/add-two-numbers/
# https://www.rubyguides.com/2017/08/ruby-linked-list/
# https://stackoverflow.com/questions/18618447/best-linked-list-in-ruby-without-extending-array

class LinkedList

  def initialize
    @head = nil
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
  
  def append_after(target, value)
    node           = find(target)
    return unless node
    old_next       = node.next
    node.next      = ListNode.new(value)
    node.next.next = old_next
  end

  def find(value)
    node = @head
    return false if !node.next
    return node  if node.value == value
    while (node = node.next)
      return node if node.value == value
    end
  end

  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end
    node      = find_before(value)
    node.next = node.next.next
  end

  def find_before(value)
    node = @head
    return false if !node.next
    return node  if node.next.value == value
    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end

  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end

  def each
    node = @head
    loop do
      break unless node
      yield node
      node = node.next
    end
  end

  def to_a
    elements = []
    current = @head
    while current.next != nil
      elements << current.value
      current = current.next
    end
    elements << current.value
  end

  def size
    count = 0
    current = @head
    while current.next != nil
      count +=1
      current = current.next
    end
    count +=1
  end

  def add_lists(l1, l2)
    val03 = l1.to_a.join.to_i + l2.to_a.join.to_i

    l3 = LinkedList.new
    val03.to_s.chars.map(&:to_i).each do |i|
      l3.append(i)
    end
    return l3
  end

end

class ListNode
  attr_accessor :next
  attr_reader   :value

  def initialize(value)
    @value = value
    @next  = nil
  end

  def to_s
    "#{@value}"
  end

  def to_i
    @value.to_i
  end

end

def add_two_numbers(l1, l2)
  
  my_llist = LinkedList.new
  l3 = my_llist.add_lists(l1, l2)
  
end
# ------------------------------------------------------------------------------------- #

l1 = LinkedList.new
l1.append(3)
l1.append(4)
l1.append(2)

l2 = LinkedList.new
l2.append(4)
l2.append(6)
l2.append(5)

add_two_numbers(l1, l2)
