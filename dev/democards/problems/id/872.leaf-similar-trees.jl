"""
@lc app=leetcode id=872 lang=python3

[872] Leaf-Similar Trees

https://leetcode.com/problems/leaf-similar-trees/description/

algorithms
Easy (64.60%)
Likes:    933
Dislikes: 44
Total Accepted:    104.4K
Total Submissions: 161.9K
Testcase Example:  '[3,5,1,6,2,9,8,null,null,7,4]\n' +
'[3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]'

Consider all the leaves of a binary tree, from left to right order, the
values of those leaves form a leaf value sequence.



For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9,
8).

Two binary trees are considered leaf-similar if their leaf value sequence is
the same.

Return true if and only if the two given trees with head nodes root1 and
root2 are leaf-similar.


Example 1:


Input: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 =
[3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
Output: true


Example 2:


Input: root1 = [1], root2 = [1]
Output: true


Example 3:


Input: root1 = [1], root2 = [2]
Output: false


Example 4:


Input: root1 = [1,2], root2 = [2,2]
Output: true


Example 5:


Input: root1 = [1,2,3], root2 = [1,3,2]
Output: false



Constraints:


The number of nodes in each tree will be in the range [1, 200].
Both of the given trees will have values in the range [0, 200].




@lc code=start
"""
function leaf_similar(root1::TreeNode{V}, root2::TreeNode{V})::Bool where {V}
    leaves1 = V[]
    leaves2 = V[]
    find_leaves!(root1, leaves1)
    find_leaves!(root2, leaves2)
    return leaves1 == leaves2
end

function find_leaves!(t::TreeNode, leaves)
    if isnothing(t.left) && isnothing(t.right)
        push!(leaves, t.val)
    else
        find_leaves!(t.left, leaves)
        find_leaves!(t.right, leaves)
    end
end

find_leaves!(::Nothing, leaves) = nothing

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

