# ---
# title: 863. All Nodes Distance K in Binary Tree
# id: problem863
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Tree, Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/description/>
# hidden: true
# ---
# 
# We are given a binary tree (with root node `root`), a `target` node, and an
# integer value `K`.
# 
# Return a list of the values of all nodes that have a distance `K` from the
# `target` node.  The answer can be returned in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: root = [3,5,1,6,2,0,8,null,null,7,4], target = 5, K = 2
#     
#     Output: [7,4,1]
#     
#     Explanation:
#     The nodes that are a distance 2 from the target node (with value 5)
#     have values 7, 4, and 1.
#     
#     ![](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/06/28/sketch0.png)
#     
#     Note that the inputs "root" and "target" are actually TreeNodes.
#     The descriptions of the inputs above are just serializations of these objects.
#     
# 
# 
# 
# **Note:**
# 
#   1. The given tree is non-empty.
#   2. Each node in the tree has unique values `0 <= node.val <= 500`.
#   3. The `target` node is a node in the tree.
#   4. `0 <= K <= 1000`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
