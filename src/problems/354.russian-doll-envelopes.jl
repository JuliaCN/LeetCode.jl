# ---
# title: 354. Russian Doll Envelopes
# id: problem354
# author: Indigo
# date: 2021-03-04
# difficulty: Hard
# categories: Binary Search, Dynamic Programming
# link: <https://leetcode.com/problems/russian-doll-envelopes/description/>
# hidden: true
# ---
# 
# You have a number of envelopes with widths and heights given as a pair of
# integers `(w, h)`. One envelope can fit into another if and only if both the
# width and height of one envelope is greater than the width and height of the
# other envelope.
# 
# What is the maximum number of envelopes can you Russian doll? (put one inside
# other)
# 
# **Note:**  
# Rotation is not allowed.
# 
# **Example:**
# 
#     
#     
#     Input: [[5,4],[6,4],[6,7],[2,3]]
#     Output: 3 
#     **Explanation: T** he maximum number of envelopes you can Russian doll is 3 ([2,3] => [5,4] => [6,7]).
#     
# 
# 
## @lc code=start
using LeetCode

function max_envelopes(envelopes::Vector{Vector{Int}})
    isempty(envelopes) && return 0
    len = length(envelopes)
    sort!(envelopes, by = x -> (x[1], -x[2]))
    dp = [envelopes[1][2]]
    for envo in @view(envelopes[2:end])
        if envo[2] > dp[end]
            push!(dp, envo[2])
        else
            dp[searchsortedfirst(dp, envo[2])] = envo[2]
        end
    end
    length(dp)
end
## @lc code=end
