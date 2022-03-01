# ---
# title: 96. Unique Binary Search Trees
# id: problem96
# author: zhwang
# date: 2022-02-23
# difficulty: Medium
# categories: Dynamic Programming, Tree
# link: <https://leetcode.com/problems/unique-binary-search-trees/description/>
# hidden: true
# ---
# 
# Given _n_ , how many structurally unique **BST 's** (binary search trees) that
# store values 1 ...  _n_?
# 
# **Example:**
# 
#     
#     
#     Input: 3
#     Output: 5
#     Explanation: Given _n_ = 3, there are a total of 5 unique BST's:
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
#   * `1 <= n <= 19`
# 
# 
## @lc code=start
using LeetCode

num_of_trees(n::Int) = binomial(2 * n, n) - binomial(2 * n, n + 1)
## @lc code=end
