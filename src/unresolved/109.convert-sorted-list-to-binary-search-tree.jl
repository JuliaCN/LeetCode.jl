# ---
# title: 109. Convert Sorted List to Binary Search Tree
# id: problem109
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Linked List, Depth-first Search
# link: <https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree/description/>
# hidden: true
# ---
# 
# Given the `head` of a singly linked list where elements are **sorted in
# ascending order** , convert it to a height balanced BST.
# 
# For this problem, a height-balanced binary tree is defined as a binary tree in
# which the depth of the two subtrees of _every_ node never differ by more than
# 1.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/17/linked.jpg)
# 
#     
#     
#     Input: head = [-10,-3,0,5,9]
#     Output: [0,-3,9,-10,null,5]
#     Explanation: One possible answer is [0,-3,9,-10,null,5], which represents the shown height balanced BST.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: head = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: head = [0]
#     Output: [0]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: head = [1,3]
#     Output: [3,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in `head` is in the range `[0, 2 * 104]`.
#   * `-10^5 <= Node.val <= 10^5`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
