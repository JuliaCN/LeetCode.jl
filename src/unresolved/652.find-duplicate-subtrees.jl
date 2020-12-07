# ---
# title: 652. Find Duplicate Subtrees
# id: problem652
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Tree
# link: <https://leetcode.com/problems/find-duplicate-subtrees/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, return all **duplicate subtrees**.
# 
# For each kind of duplicate subtrees, you only need to return the root node of
# any **one** of them.
# 
# Two trees are **duplicate** if they have the **same structure** with the
# **same node values**.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/16/e1.jpg)
# 
#     
#     
#     Input: root = [1,2,3,4,null,2,4,null,null,4]
#     Output: [[2,4],[4]]
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/16/e2.jpg)
# 
#     
#     
#     Input: root = [2,1,1]
#     Output: [[1]]
#     
# 
# **Example 3:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/16/e33.jpg)
# 
#     
#     
#     Input: root = [2,2,2,3,null,3,null]
#     Output: [[2,3],[3]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of the nodes in the tree will be in the range `[1, 10^4]`
#   * `-200 <= Node.val <= 200`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
