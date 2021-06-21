# ---
# title: 437. Path Sum III
# id: problem437
# author: Indigo
# date: 2021-06-21
# difficulty: Medium
# categories: Tree
# link: <https://leetcode.com/problems/path-sum-iii/description/>
# hidden: true
# ---
# 
# You are given a binary tree in which each node contains an integer value.
# 
# Find the number of paths that sum to a given value.
# 
# The path does not need to start or end at the root or a leaf, but it must go
# downwards (traveling only from parent nodes to child nodes).
# 
# The tree has no more than 1,000 nodes and the values are in the range
# -1,000,000 to 1,000,000.
# 
# **Example:**
# 
#     
#     
#     root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8
#     
#           10
#          /  \
#         **5**   **-3**
#        **/** **\**    **\**
#       **3**   **2**   **11**
#      / \   **\**
#     3  -2   **1**
#     
#     Return 3. The paths that sum to 8 are:
#     
#     1.  5 -> 3
#     2.  5 -> 2 -> 1
#     3. -3 -> 11
#     
# 
# 
## @lc code=start
using LeetCode

function tree_path_sum(root::TreeNode{Int}, sm::Int)::Int
    res = 0
    tsum(::Nothing, sm::Int) = nothing
    function tsum(root::TreeNode{Int}, sm::Int)::Nothing
        sm -= root.val
        sm == 0 && (res += 1)
        tsum(root.left, sm)
        tsum(root.right, sm)
    end
    tsum(root, sm)
    res += tree_path_sum(root.left, sm)
    res += tree_path_sum(root.right, sm)
end

tree_path_sum(root::Nothing, sum::Int) = 0
## @lc code=end
