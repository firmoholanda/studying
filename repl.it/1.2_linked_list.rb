# https://repl.it/student/submissions/8846068?lite=true
# https://hackernoon.com/implementing-singly-linked-list-with-ruby-om2df3ya6

class Node
  attr_accessor :value, :next_node
    
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
  
class LinkedList
  # setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  # create a new node
  def add(number)
    this_node = Node.new(number)
    
    if @head.nil?
      @head = this_node
      return
    end

    current = @head  
    
    until current.next_node.nil?      # until current.nil means until we reach the last node
      current = current.next_node
    end

    current.next_node = this_node     # point current(last node) to our new node
  end

  # get node @ index
  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    return current.value
  end

  def add_at(index,item)
    if @head.nil? 
      #if list is empty, the head is the new node             
      this_nod = Node.new(item)
      @head = this_nod
    end
    
    if index == 0 
      # if index is 0, we insert in the first position
      this_nod = Node.new(item,@head)
      @head = this_nod
    end

    if index > 0
    #insert at desired position if index is greater than 0 
    ind = index-1
    current = @head
    before_current = @head

    #loop to the desired position before where you wish to insert
    ind.times do
      before_current=current.next_node
    end

    #loop to the desired position where you wish to insert
    index.times do
      current=current.next_node
    end

    #create a new node you wish to insert
    this_nod = Node.new(item) 
    after_current = before_current.next_node

    #point node before current to new node
    before_current.next_node = this_nod

    #point new node to the old current node 
    this_nod.next_node = after_current
  
    end
  end

  def remove(index)
    if @head.nil?
      puts "the storage is empty"
    end

    if (index==0) 
      #remove the first element from the list
      current=@head 
      #get the element after the head and make head equal to it
      current.next=new_current 
      @head=new_current
    end
    
    if (index>0)
      current= get_node(index) #(desired node to be removed)
      before_current= get_node(index-1) 
      after_current=current.next_node
      before_current.next_node=after_current
    end
 end

  private

    #this returns a given node based on the index given as argument
    def get_node(index)
      current = @head
      index.times do
        current=current.next_node
      end
      return current
    end
  
end

#--------------------------------------------------------------------

list = LinkedList.new
  
list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

p list.get(2)
p list.get(3)
