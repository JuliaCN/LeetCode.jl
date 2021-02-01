# ---
# title: 894. All Possible Full Binary Trees
# id: problem894
# author: Indigo
# date: 2021-02-01
# difficulty: Medium
# categories: Tree, Recursion
# link: <https://leetcode.com/problems/all-possible-full-binary-trees/description/>
# hidden: true
# ---
# 
# A _full binary tree_  is a binary tree where each node has exactly 0 or 2
# children.
# 
# Return a list of all possible full binary trees with `N` nodes.  Each element
# of the answer is the root node of one possible tree.
# 
# Each `node` of each tree in the answer **must** have `node.val = 0`.
# 
# You may return the final list of trees in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: 7
#     Output: [[0,0,0,null,null,0,0,null,null,0,0],[0,0,0,null,null,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,null,null,null,null,0,0],[0,0,0,0,0,null,null,0,0]]
#     Explanation:
#     ![](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/08/22/fivetrees.png)
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= N <= 20`
# 
# 
## @lc code=start
using LeetCode

function all_possible_fbt(N::Int)
    cache_res = [TreeNode{Int}[] for i in 1:N]
    cache_res[1] = [TreeNode(0)]
    if N % 2 == 0
        return TreeNode[]
    end
    for n in 3:2:N
        for i in 1:2:n-1
            lres = cache_res[i]
            rres = cache_res[n-i-1]
            append!(cache_res[n], TreeNode(0, lr, rr) for lr in lres for rr in rres)
        end
    end
    return cache_res[N]
end
## @lc code=end
