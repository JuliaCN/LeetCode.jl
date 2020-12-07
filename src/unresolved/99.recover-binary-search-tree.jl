# ---
# title: 99. Recover Binary Search Tree
# id: problem99
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/recover-binary-search-tree/description/>
# hidden: true
# ---
# 
# You are given the `root` of a binary search tree (BST), where exactly two
# nodes of the tree were swapped by mistake. _Recover the tree without changing
# its structure_.
# 
# **Follow up:** A solution using `O(n)` space is pretty straight forward. Could
# you devise a constant space solution?
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/28/recover1.jpg)
# 
#     
#     
#     Input: root = [1,3,null,null,2]
#     Output: [3,1,null,null,2]
#     Explanation: 3 cannot be a left child of 1 because 3 > 1. Swapping 1 and 3 makes the BST valid.
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/28/recover2.jpg)
# 
#     
#     
#     Input: root = [3,1,4,null,null,2]
#     Output: [2,1,4,null,null,3]
#     Explanation: 2 cannot be in the right subtree of 3 because 2 < 3. Swapping 2 and 3 makes the BST valid.
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[2, 1000]`.
#   * `-231 <= Node.val <= 231 - 1`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
