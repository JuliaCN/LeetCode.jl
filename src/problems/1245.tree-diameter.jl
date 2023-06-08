# ---
# title: 1245. Tree Diameter
# id: problem1245
# author: Jerry Ling
# date: 2023-06-08
# difficulty: Medium
# categories: Tree
# link: <https://leetcode.com/problems/tree-diameter/>
# hidden: true
# ---
# 
# Given an undirected tree, return its diameter: the number of edges in a longest path in that tree.
#
# The tree is given as an array of edges where edges[i] = [u, v] is a bidirectional edge between nodes u and v.  Each node has labels in the set {0, 1, ..., edges.length}.
# 
# 
# **Example 1:**
# 
# Input: edges = [[0,1],[0,2]]
# Output: 2
# Explanation: 
# A longest path of the tree is the path 1 - 0 - 2.
#     
# 
# **Example 2:**
# 
# Input: edges = [[0,1],[1,2],[2,3],[1,4],[4,5]]
# Output: 4
# Explanation: 
# A longest path of the tree is the path 3 - 2 - 1 - 4 - 5.     
# 
# 
# 
# **Constraints:**
# 
#   * 0 <= edges.length < 10^4
#   * edges[i][0] != edges[i][1]
#   * 0 <= edges[i][j] <= edges.length
# 
# 
## @lc code=start
using LeetCode

function tree_diameter(edges::Vector{Vector{Int}})
    n = length(edges)
    neighbors = Dict(i => Int[] for i in 0:n)
    for edge in edges
        u, v = edge
        push!(neighbors[u], v)
        push!(neighbors[v], u)
    end

    function depth_first(node, neighbors)
        # (current length, current node)
        longest = (0, node)

        # each tuple is (current length, current node, previous node)
        todo = [(longest..., -1)]
        while !isempty(todo)
            len, this, prev = pop!(todo)
            if len > longest[1]
                longest = (len, this)
            end

            for next in neighbors[this]
                next == prev && continue
                push!(todo, (len + 1, next, this))
            end
        end

        return longest
    end

    # we find one "end" of the eventual chain by doing depth first once
    # and a second time starting from the known end
    _, one_end = depth_first(0, neighbors)
    diameter, _ = depth_first(one_end, neighbors)

    return diameter
end
## @lc code=end
