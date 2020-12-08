# ---
# title: 882. Reachable Nodes In Subdivided Graph
# id: problem882
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Heap
# link: <https://leetcode.com/problems/reachable-nodes-in-subdivided-graph/description/>
# hidden: true
# ---
# 
# Starting with an  **undirected** graph (the "original graph") with nodes from
# `0` to `N-1`, subdivisions are made to some of the edges.
# 
# The graph is given as follows: `edges[k]` is a list of integer pairs `(i, j,
# n)` such that `(i, j)` is an edge of the original graph,
# 
# and `n` is the total number of **new** nodes on that edge.
# 
# Then, the edge `(i, j)` is deleted from the original graph, `n` new nodes
# `(x_1, x_2, ..., x_n)` are added to the original graph,
# 
# and `n+1` new edges `(i, x_1), (x_1, x_2), (x_2, x_3), ..., (x_{n-1}, x_n),
# (x_n, j)` are added to the original graph.
# 
# Now, you start at node `0` from the original graph, and in each move, you
# travel along one edge.
# 
# Return how many nodes you can reach in at most `M` moves.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input:edges = [[0,1,10],[0,2,1],[1,2,2]], M = 6, N = 3
#     Output: 13
#     Explanation:
#     The nodes that are reachable in the final graph after M = 6 moves are indicated below.
#     ![](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/08/01/origfinal.png)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:edges = [[0,1,4],[1,2,6],[0,2,8],[1,3,1]], M = 10, N = 4
#     Output: 23
# 
# 
# 
# **Note:**
# 
#   1. `0 <= edges.length <= 10000`
#   2. `0 <= edges[i][0] < edges[i][1] < N`
#   3. There does not exist any `i != j` for which `edges[i][0] == edges[j][0]` and `edges[i][1] == edges[j][1]`.
#   4. The original graph has no parallel edges.
#   5. `0 <= edges[i][2] <= 10000`
#   6. `0 <= M <= 10^9`
#   7. `1 <= N <= 3000`
#   8. A reachable node is a node that can be travelled to using at most M moves starting from node 0.
# 
# 
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
