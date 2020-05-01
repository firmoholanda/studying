
# require '../h_lib'

# creates a historygram into a hash
#my_hash = a.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}

#numbers_hash = Hash[(0...trip_durations.size).zip(trip_durations)]

# partition on array
#p (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]

# ------------------------------------------------------------------------------------- #
# binary tree
# https://www.thegeekstuff.com/2013/02/c-binary-tree/

class Node
  attr_accessor :data, :left, :right

  MODES = [:preorder, :inorder, :postorder]

  def initialize(data = nil)
    @data  = data
    @left  = nil
    @right = nil
  end

  def insert(node)
    if data.nil?
      self.data = node.data
      return  self
    end

    if node.data < data
      self.left = Node.new if left.nil?
      self.left.insert(node)
    elsif node.data > data
      self.right = Node.new if right.nil?
      self.right.insert(node)
    end
  end

  def search(node_data)
    return nil if data.nil?

    if node_data == data
      return self
    elsif node_data < data
      left.search(node_data)
    elsif node_data > data
      right.search(node_data)
    end
  end

  def destroy(node_data)
    if node = search(node_data)
      destroy_node(node)
    end
  end

  def to_a(mode = :preorder)
    return nil if data.nil?

    method_name = 'to_a_' + (MODES.include?(mode) ? mode : :preorder).to_s
    send(method_name)
  end

  
  protected

    def destroy_node(node)
      destroy_node(node.left) unless node.left.nil?
      destroy_node(node.right) unless node.right.nil?

      node.data = node.left = node.right = nil
    end

    # pre-order displays root node, left node and then right node
    def to_a_preorder
      tree = []
      tree << data
      tree << left.to_a_preorder unless left.nil?
      tree << right.to_a_preorder unless right.nil?

      tree
    end

    # in-order displays left node, root node and then right node
    def to_a_inorder
      tree = []
      tree << left.to_a_inorder unless left.nil?
      tree << data
      tree << right.to_a_inorder unless right.nil?

      tree
    end
    
    # post-order displays left node, root node and then right node
    def to_a_postorder
      tree = []
      tree << left.to_a_postorder unless left.nil?
      tree << right.to_a_postorder unless right.nil?
      tree << data

      tree
    end

end
# ------------------------------------------------------------------------------------- #
