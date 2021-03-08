# ---
# title: 131. Palindrome Partitioning
# id: problem131
# author: Indigo
# date: 2021-03-08
# difficulty: Medium
# categories: Backtracking
# link: <https://leetcode.com/problems/palindrome-partitioning/description/>
# hidden: true
# ---
# 
# Given a string _s_ , partition _s_ such that every substring of the partition
# is a palindrome.
# 
# Return all possible palindrome partitioning of _s_.
# 
# **Example:**
# 
#     
#     
#     Input:  "aab"
#     Output:
#     [
#       ["aa","b"],
#       ["a","a","b"]
#     ]
#     
# 
# 
## @lc code=start
using LeetCode

function partition_ps(s::String)
    len = length(s)
    is_ps = fill(false, len, len)
    is_ps[1, 1] = true
    for i in 2:len
        is_ps[i, i] = true
        is_ps[i-1, i] = s[i-1] == s[i]
        @inbounds for k in 1:min(i-1, len - i)
            s[i - k] == s[i + k] ? is_ps[i-k, i + k] = true : break
        end
        @inbounds for k in 1:min(i - 2, len - i)
            s[i - 1 - k] == s[i + k] ? is_ps[i - 1 - k, i + k] = true : break
        end
    end
    function dfs(start::Int)
        start == len && return [[SubString(s, len, len)]]
        res = Vector{String}[]
        for ed in start:len
            !is_ps[start, ed] && continue 
            for it in dfs(ed + 1)
                push!(res, pushfirst!(it, SubString(s, start, ed)))
            end            
        end
        res
    end
    dfs(1)
end
## @lc code=end
