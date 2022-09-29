# ---
# title: 1090. Largest Values From Labels
# id: problem1090
# author: Indigo
# date: 2022-09-29
# difficulty: Medium
# categories: Hash Table, Greedy
# link: <https://leetcode.com/problems/largest-values-from-labels/description/>
# hidden: true
# ---
# 
# We have a set of items: the `i`-th item has value `values[i]` and label
# `labels[i]`.
# 
# Then, we choose a subset `S` of these items, such that:
# 
#   * `|S| <= num_wanted`
#   * For every label `L`, the number of items in `S` with label `L` is `<= use_limit`.
# 
# Return the largest possible sum of the subset `S`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: values = [5,4,3,2,1], labels = [1,1,2,2,3], num_wanted = 3, use_limit = 1
#     Output: 9
#     Explanation: The subset chosen is the first, third, and fifth item.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: values = [5,4,3,2,1], labels = [1,3,3,3,2], num_wanted = 3, use_limit = 2
#     Output: 12
#     Explanation: The subset chosen is the first, second, and third item.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: values = [9,8,8,7,6], labels = [0,0,0,1,1], num_wanted = 3, use_limit = 1
#     Output:  16
#     Explanation: The subset chosen is the first and fourth item.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: values = [9,8,8,7,6], labels = [0,0,0,1,1], num_wanted = 3, use_limit = 2
#     Output: 24
#     Explanation: The subset chosen is the first, second, and fourth item.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= values.length == labels.length <= 20000`
#   2. `0 <= values[i], labels[i] <= 20000`
#   3. `1 <= num_wanted, use_limit <= values.length`
# 
# 
## @lc code=start
using LeetCode

function largest_vals_from_labels(
    vals::Vector{Int}, labels::Vector{Int}, num_wanted::Int, use_limit::Int
)
    dc = Dict{Int,Vector{Int}}()
    for (idx, label) in enumerate(labels)
        v = get!(dc, label, Int[])
        push!(v, vals[idx])
    end
    res = Int[]
    for v in values(dc)
        sort!(v; rev=true)
        append!(res, @view(v[1:min(use_limit, end)]))
    end
    sort!(res; rev=true)
    return sum(res[1:min(num_wanted, end)])
end
## @lc code=end
