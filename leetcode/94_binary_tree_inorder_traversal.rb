# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/


class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# ------------------------------------------------------------------------------------- #
def inorder_traversal(root)

  return_arr = []

  if root
    inorder_traversal(root.left)
    return_arr.push(root.val)
    inorder_traversal(root.right)
    p return_arr
  end

end
# ------------------------------------------------------------------------------------- #
 
my_tree = TreeNode.new(1)
my_tree.right = TreeNode.new(2)
my_tree.right.left = TreeNode.new(3)

inorder_traversal(my_tree)
