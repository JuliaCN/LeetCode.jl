# ---
# title: 559. Maximum Depth of N-ary Tree
# id: problem559
# author: Indigo
# date: 2021-02-16
# difficulty: Easy
# categories: Tree, Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/maximum-depth-of-n-ary-tree/description/>
# hidden: true
# ---
# 
# Given a n-ary tree, find its maximum depth.
# 
# The maximum depth is the number of nodes along the longest path from the root
# node down to the farthest leaf node.
# 
# _Nary-Tree input serialization  is represented in their level order traversal,
# each group of children is separated by the null value (See examples)._
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2018/10/12/narytreeexample.png)
# 
#     
#     
#     Input: root = [1,null,3,2,4,null,5,6]
#     Output: 3
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2019/11/08/sample_4_964.png)
# 
#     
#     
#     Input: root = [1,null,2,3,4,5,null,null,6,7,null,8,null,9,10,null,null,11,null,12,null,13,null,null,14]
#     Output: 5
#     
# 
# 
# 
# **Constraints:**
# 
#   * The depth of the n-ary tree is less than or equal to `1000`.
#   * The total number of nodes is between `[0, 104]`.
# 
# 
## @lc code=start
using LeetCode

function max_depth_559(tree::Vector{Vector{Int}})
    isempty(tree) && return 0
    q = Queue{Tuple{Int, Int}}()
    enqueue!(q, (1, 1))
    res = 1
    while !isempty(q)
        frt = dequeue!(q)
        res = frt[2]
        for son in tree[frt[1]]
            enqueue!(q, (son, res + 1))
        end
    end
    res
end
## @lc code=end
