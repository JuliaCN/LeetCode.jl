# ---
# title: 139. Word Break
# id: problem139
# author: zhwang
# date: 2022-02-18
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/word-break/description/>
# hidden: true
# ---
# 
# Given a **non-empty** string _s_ and a dictionary _wordDict_ containing a list
# of **non-empty** words, determine if _s_ can be segmented into a space-
# separated sequence of one or more dictionary words.
# 
# **Note:**
# 
#   * The same word in the dictionary may be reused multiple times in the segmentation.
#   * You may assume the dictionary does not contain duplicate words.
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "leetcode", wordDict = ["leet", "code"]
#     Output: true
#     Explanation: Return true because "leetcode" can be segmented as "leet code".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "applepenapple", wordDict = ["apple", "pen"]
#     Output: true
#     Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
#                  Note that you are allowed to reuse a dictionary word.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "catsandog", wordDict = ["cats", "dog", "sand", "and", "cat"]
#     Output: false
#     
# 
# 
## @lc code=start
using LeetCode

## BFS
function word_break_bfs(s::String, word_dict::Vector{String})::Bool
    n, word_dict = length(s), sort!(word_dict; by=x -> length(x))
    valids, valid_pos = fill(false, n), [0]
    while !isempty(valid_pos)
        pos = popfirst!(valid_pos)
        for word in word_dict
            (new_pos = pos + length(word)) > n && break
            new_pos == n && s[(pos + 1):new_pos] == word && return true
            if !valids[new_pos] && s[(pos + 1):new_pos] == word
                valids[new_pos] = true
                push!(valid_pos, new_pos)
            end
        end
    end
    return false
end

## Dynamic Programming
function word_break(s::String, word_dict::Vector{String})::Bool
    lens = sort!(unique!(length.(word_dict)))
    dp = append!([true], fill(false, length(s)))
    for i in eachindex(dp)
        for len in lens
            i > len || break
            dp[i - len] && s[(i - len):(i - 1)] ∈ word_dict && (dp[i] = true)
        end
    end
    return last(dp)
end
## @lc code=end
