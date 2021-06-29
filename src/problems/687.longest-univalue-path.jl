# ---
# title: 687. Longest Univalue Path
# id: problem687
# author: Indigo
# date: 2021-06-29
# difficulty: Medium
# categories: Tree, Recursion
# link: <https://leetcode.com/problems/longest-univalue-path/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, return _the length of the longest path,
# where each node in the path has the same value_. This path may or may not pass
# through the root.
# 
# **The length of the path** between two nodes is represented by the number of
# edges between them.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/13/ex1.jpg)
# 
#     
#     
#     Input: root = [5,4,5,1,1,5]
#     Output: 2
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/13/ex2.jpg)
# 
#     
#     
#     Input: root = [1,4,5,4,4,5]
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[0, 104]`.
#   * `-1000 <= Node.val <= 1000`
#   * The depth of the tree will not exceed `1000`.
# 
# 
## @lc code=start
using LeetCode

function longest_univalue_path(root::TreeNode{Int})
    res = 0
    function lup(root::TreeNode{Int})
        r2 = 1
        rl = lup(root.left)
        rr = lup(root.right)
        r = max(rl, rr) + 1
        if rl != 0 && root.val == root.left.val
            r2 += rl
        end
        if rr != 0 && root.val == root.right.val
            r2 += rr
        end
        res = max(r, res)
        return r
    end
    lup(::Nothing) = 0
    lup(root)
    return res - 1
end
## @lc code=end
