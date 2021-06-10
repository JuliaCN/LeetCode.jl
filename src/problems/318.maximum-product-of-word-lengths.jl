# ---
# title: 318. Maximum Product of Word Lengths
# id: problem318
# author: Indigo
# date: 2021-06-10
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/maximum-product-of-word-lengths/description/>
# hidden: true
# ---
# 
# Given a string array `words`, find the maximum value of `length(word[i]) *
# length(word[j])` where the two words do not share common letters. You may
# assume that each word will contain only lower case letters. If no such two
# words exist, return 0.
# 
# **Example 1:**
# 
#     
#     
#     Input: ["abcw","baz","foo","bar","xtfn","abcdef"]
#     Output:16 
#     Explanation:The two words can be "abcw", "xtfn".
# 
# **Example 2:**
# 
#     
#     
#     Input: ["a","ab","abc","d","cd","bcd","abcd"]
#     Output:4 
#     Explanation:The two words can be "ab", "cd".
# 
# **Example 3:**
# 
#     
#     
#     Input: ["a","aa","aaa","aaaa"]
#     Output:0 
#     Explanation:No such pair of words.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= words.length <= 10^3`
#   * `0 <= words[i].length <= 10^3`
#   * `words[i]` consists only of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function max_product(words::Vector{String})
    mp = Dict{UInt32, Int}()    
    for word in words
        init = zero(UInt32)
        for c in word
            init |= UInt32(1) << (c - 'a')
        end
        mp[init] = max(length(word), get(mp, init, 0))
    end
    res = 0
    for x in keys(mp), y in keys(mp)
        (x & y == 0) && (res = max(res, mp[x] * mp[y]))        
    end
    return res
end
## @lc code=end
