# ---
# title: 95. Unique Binary Search Trees II
# id: problem95
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming, Tree
# link: <https://leetcode.com/problems/unique-binary-search-trees-ii/description/>
# hidden: true
# ---
# 
# Given an integer `n`, generate all structurally unique **BST 's** (binary
# search trees) that store values 1 ...  _n_.
# 
# **Example:**
# 
#     
#     
#     Input: 3
#     Output:
#     [
#       [1,null,3,2],
#       [3,2,null,1],
#       [3,1,null,null,2],
#       [2,1,3],
#       [1,null,2,null,3]
#     ]
#     Explanation:
#     The above output corresponds to the 5 unique BST's shown below:
#     
#        1         3     3      2      1
#         \       /     /      / \      \
#          3     2     1      1   3      2
#         /     /       \                 \
#        2     1         2                 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= n <= 8`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
