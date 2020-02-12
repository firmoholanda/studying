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
FIXNUM_MIN = -(2**(0.size * 8 -2))

def max_path_sum_util(root, res)

  # case tree is empty
  return 0 if (root == nil)
  
  # case tree has no leaf
  return root.val if ( (root.left == nil) && (root.right == nil) )

  # find max sum in left and righ subtree
  left_sum = max_path_sum_util(root.left, res)
  right_sum = max_path_sum_util(root.right, res)

  # if both left and right children exist
  if (root.left != nil) && (root.right != nil)
    res[0] = [res[0], (left_sum + right_sum + root.val)].max
    return [left_sum, right_sum].max + root.val
  end

  # if any of the two children is empty, return one side sum
  (root.left == nil) ? (return right_sum + root.val) : (return left_sum + root.val)

end

def max_path_sum(root)

  res = [FIXNUM_MIN]
  max_path_sum_util(root, res)

  return res[0]

end
# ------------------------------------------------------------------------------------- #

my_tree = TreeNode.new(-10)
my_tree.left = TreeNode.new(9)
my_tree.right = TreeNode.new(20)
my_tree.right.left = TreeNode.new(15)
my_tree.right.right = TreeNode.new(7)

#my_tree = TreeNode.new(0)

p max_path_sum(my_tree)
