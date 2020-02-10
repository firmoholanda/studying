# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# https://www.geeksforgeeks.org/level-order-tree-traversal/

class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end

end
# ------------------------------------------------------------------------------------- #

def height(node)
  
  if node == nil
    return 0
  else
    left_height = height(node.left)
    right_height = height(node.right)
  end

  left_height > right_height ? (return left_height+1) : (return right_height+1)

end

def print_given_level(root, level)
  
  if root == nil then return end
  
  if level == 1
    puts root.val
  elsif level > 1
    print_given_level(root.left , level-1) 
    print_given_level(root.right , level-1) 
  end

end

def level_order(root)

  return_arr = []
  height = height(root)

  (1..height+1).each do |i|
    p print_given_level(root, i)
    #return_arr << print_given_level(root, i)
  end

  puts return_arr

end
# ------------------------------------------------------------------------------------- #
 
my_tree = TreeNode.new(3)
my_tree.left = TreeNode.new(9)
my_tree.right = TreeNode.new(20)
my_tree.right.left = TreeNode.new(15)
my_tree.right.right = TreeNode.new(7)

#p height(my_tree)

level_order(my_tree)
