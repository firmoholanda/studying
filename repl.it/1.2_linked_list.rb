#https://repl.it/student/submissions/8846068?lite=true
#https://hackernoon.com/implementing-singly-linked-list-with-ruby-om2df3ya6

class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
end
  
class LinkedList
    #setup head and tail
    def initialize
        @head = nil
        @tail = nil
    end
  
    def add(number)
        #create a new node 
        this_node = Node.new(number)
        if @head.nil?
            @head = this_node
            return
        end

        current = @head  
        #until current.nil means until we reach the last node
        until current.next_node.nil?
            current = current.next_node
        end

        #point current(last node) to our new node
        current.next_node = this_node
    end
  
    def get(index)
        current=@head
        index.times do
            current=current.next_node
        end
        return current.value
    end
end

#--------------------------------------------------------------------

list = LinkedList.new
  
list.add(3)
list.add(5)

puts list.get(1)