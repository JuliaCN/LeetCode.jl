# ---
# title: 654. Maximum Binary Tree
# id: problem654
# author: Indigo
# date: 2021-06-28
# difficulty: Medium
# categories: Tree
# link: <https://leetcode.com/problems/maximum-binary-tree/description/>
# hidden: true
# ---
# 
# Given an integer array with no duplicates. A maximum tree building on this
# array is defined as follow:
# 
#   1. The root is the maximum number in the array. 
#   2. The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
#   3. The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.
# 
# Construct the maximum tree by the given array and output the root node of this
# tree.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [3,2,1,6,0,5]
#     Output: return the tree root node representing the following tree:
#     
#           6
#         /   \
#        3     5
#         \    / 
#          2  0   
#            \
#             1
#     
# 
# **Note:**  
# 
#   1. The size of the given array will be in the range [1,1000].
# 
# 
## @lc code=start
using LeetCode

function construct_maximum_binary_tree(nums::AbstractVector{Int})
    isempty(nums) && return nothing
    max_idx = argmax(nums)
    return TreeNode(nums[max_idx],
                    construct_maximum_binary_tree(@view(nums[1:(max_idx - 1)])),
                    construct_maximum_binary_tree(@view(nums[(max_idx + 1):end])))
end
## @lc code=end
