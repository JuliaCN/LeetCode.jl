# ---
# title: 862. Shortest Subarray with Sum at Least K
# id: problem862
# author: Indigo
# date: 2021-02-17
# difficulty: Hard
# categories: Binary Search, Queue
# link: <https://leetcode.com/problems/shortest-subarray-with-sum-at-least-k/description/>
# hidden: true
# ---
# 
# Return the **length** of the shortest, non-empty, contiguous subarray of `A`
# with sum at least `K`.
# 
# If there is no non-empty subarray with sum at least `K`, return `-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1], K = 1
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [1,2], K = 4
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [2,-1,2], K = 3
#     Output: 3
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 50000`
#   2. `-10 ^ 5 <= A[i] <= 10 ^ 5`
#   3. `1 <= K <= 10 ^ 9`
# 
# 
## @lc code=start
using LeetCode

function shortest_subarray(A::Vector{Int}, K::Int)
    dq = Deque{Int}()
    prex = fill(0, length(A) + 1)
    cumsum!(@view(prex[2:end]), A)
    res = typemax(Int)
    for i in 1:length(prex) 
        while !isempty(dq) && prex[i] - prex[first(dq)] ≥ K
            res = min(res, i - first(dq))
            popfirst!(dq)
        end
        while !isempty(dq) && prex[i] ≤ prex[last(dq)] 
            pop!(dq)
        end
        push!(dq, i)
    end
    res == typemax(Int) ? -1 : res
end
## @lc code=end