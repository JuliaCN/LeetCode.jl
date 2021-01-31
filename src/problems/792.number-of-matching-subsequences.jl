# ---
# title: 792. Number of Matching Subsequences
# id: problem792
# author: Indigo
# date: 2021-01-29
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/number-of-matching-subsequences/description/>
# hidden: true
# ---
# 
# Given string `S` and a dictionary of words `words`, find the number of
# `words[i]` that is a subsequence of `S`.
# 
#     
#     
#     **Example :**
#     Input: 
#     S = "abcde"
#     words = ["a", "bb", "acd", "ace"]
#     Output: 3
#     Explanation: There are three words in words that are a subsequence of S: "a", "acd", "ace".
#     
# 
# **Note:**
# 
#   * All words in `words` and `S` will only consists of lowercase letters.
#   * The length of `S` will be in the range of `[1, 50000]`.
#   * The length of `words` will be in the range of `[1, 5000]`.
#   * The length of `words[i]` will be in the range of `[1, 50]`.
# 
# 
## @lc code=start
using LeetCode

function num_matching_subseq(S::String, words::Vector{String})
    map = Dict{Char, Vector{String}}((ch, []) for ch in 'a':'z')
    for w in words
        push!(map[w[1]], w[2:end])
    end
    res = 0
    for ch in S
        wds = String[]
        wds, map[ch] = map[ch], wds
        for w in wds
            if w == ""
                res += 1
            else
                push!(map[w[1]], w[2:end])
            end
        end
    end
    res
end
## @lc code=end
