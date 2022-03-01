# ---
# title: 653. Two Sum IV - Input is a BST
# id: problem653
# author: zhwang
# date: 2022-02-23
# difficulty: Easy
# categories: Tree
# link: <https://leetcode.com/problems/two-sum-iv-input-is-a-bst/description/>
# hidden: true
# ---
# 
# Given the `root` of a Binary Search Tree and a target number `k`, return
# _`true` if there exist two elements in the BST such that their sum is equal to
# the given target_.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/21/sum_tree_1.jpg)
# 
#     
#     
#     Input: root = [5,3,6,2,4,null,7], k = 9
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/21/sum_tree_2.jpg)
# 
#     
#     
#     Input: root = [5,3,6,2,4,null,7], k = 28
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: root = [2,1,3], k = 4
#     Output: true
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: root = [2,1,3], k = 1
#     Output: false
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: root = [2,1,3], k = 3
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[1, 104]`.
#   * `-104 <= Node.val <= 104`
#   * `root` is guaranteed to be a **valid** binary search tree.
#   * `-105 <= k <= 105`
# 
# 
## @lc code=start
using LeetCode

function find_target_inorder_traversal(root::TreeNode, k::Int)::Bool
    stack, nums = TreeNode{Int}[], Real[-Inf32] ## lowest bound
    while !isempty(stack) || !isnothing(root)
        while !isnothing(root)
            push!(stack, root)
            root = root.left
        end
        root = pop!(stack)
        while nums[end] + root.val > k
            pop!(nums)
        end
        root.val + nums[end] == k && return true
        push!(nums, root.val)
        root = root.right
    end
    return false
end
## @lc code=end
