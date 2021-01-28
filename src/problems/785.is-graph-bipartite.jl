# ---
# title: 785. Is Graph Bipartite?
# id: problem785
# author: Indigo
# date: 2021-01-28
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search, Graph
# link: <https://leetcode.com/problems/is-graph-bipartite/description/>
# hidden: true
# ---
# 
# Given an undirected `graph`, return `true` if and only if it is bipartite.
# 
# Recall that a graph is _bipartite_ if we can split its set of nodes into two
# independent subsets A and B, such that every edge in the graph has one node in
# A and another node in B.
# 
# The graph is given in the following form: `graph[i]` is a list of indexes `j`
# for which the edge between nodes `i` and `j` exists.  Each node is an integer
# between `0` and `graph.length - 1`.  There are no self edges or parallel
# edges: `graph[i]` does not contain `i`, and it doesn't contain any element
# twice.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/21/bi1.jpg)
# 
#     
#     
#     Input: graph = [[1,3],[0,2],[1,3],[0,2]]
#     Output: true
#     Explanation: We can divide the vertices into two groups: {0, 2} and {1, 3}.
#     
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/21/bi2.jpg)
# 
#     
#     
#     Input: graph = [[1,2,3],[0,2],[0,1,3],[0,2]]
#     Output: false
#     Explanation: We cannot find a way to divide the set of nodes into two independent subsets.
#     
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= graph.length <= 100`
#   * `0 <= graph[i].length < 100`
#   * `0 <= graph[i][j] <= graph.length - 1`
#   * `graph[i][j] != i`
#   * All the values of `graph[i]` are **unique**.
#   * The graph is **guaranteed** to be **undirected**. 
# 
# 
## @lc code=start
using LeetCode
using DataStructures
function is_bipartite(graph::Vector{Vector{Int}})
    for edge in graph
        edge .+= 1
    end
    color = fill(0, length(graph))
    q = Queue{Int}()
    for i in 1:length(graph)
        if color[i] != 0
            continue
        end
        color[i] = 1
        enqueue!(q, i)
        while !isempty(q)
            root = dequeue!(q)
            for neighbor in graph[root]
                if color[neighbor] == 0
                    color[neighbor] = -color[root]
                    enqueue!(q, neighbor)
                elseif color[neighbor] == color[root]
                    return false
                end
            end
        end
    end
    return true
end
## @lc code=end
