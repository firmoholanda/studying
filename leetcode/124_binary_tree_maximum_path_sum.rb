# https://leetcode.com/problems/binary-tree-maximum-path-sum/
# https://www.geeksforgeeks.org/find-maximum-path-sum-two-leaves-binary-tree/

class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end

end
# ------------------------------------------------------------------------------------- #

def max_path_sum(root, res)

  # case tree is empty
  return 0 if (root == nil)
  
  # case tree has no leaf
  return root.val if ( (root.left == nil) && (root.right == nil) )

  # find max sum in left and righ subtree
  left_sum = max_path_sum(root.left, res)
  right_sum = max_path_sum(root.right, res)

  # if both left and right children exist
  if (root.left != nil) && (root.right != nil)
    res[0] = (res[0], left_sum + right_sum + root.data).max
    return (left_sum, right_sum) + root.data
  end

end
# ------------------------------------------------------------------------------------- #

my_tree = TreeNode.new(-10)
my_tree.left = TreeNode.new(9)
my_tree.right = TreeNode.new(20)
my_tree.right.left = TreeNode.new(15)
my_tree.right.right = TreeNode.new(7)

p max_path_sum(my_tree, [-2147483648])
