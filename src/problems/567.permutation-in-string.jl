# ---
# title: 567. Permutation in String
# id: problem567
# author: zhwang
# date: 2022-02-17
# difficulty: Medium
# categories: Two Pointers, Sliding Window
# link: <https://leetcode.com/problems/permutation-in-string/description/>
# hidden: true
# ---
# 
# Given two strings **s1** and **s2** , write a function to return true if
# **s2** contains the permutation of **s1**. In other words, one of the first
# string's permutations is the **substring** of the second string.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s1 = "ab" s2 = "eidbaooo"
#     Output: True
#     Explanation: s2 contains one permutation of s1 ("ba").
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s1= "ab" s2 = "eidboaoo"
#     Output: False
#     
# 
# 
# 
# **Constraints:**
# 
#   * The input strings only contain lower case letters.
#   * The length of both given strings is in range [1, 10,000].
# 
# 
## @lc code=start
using LeetCode

## Double Pointers
function check_inclusion(s1::String, s2::String)::Bool
    empty!(d::Dict{Char,Int}) = for i in 'a':'z' d[i] = 0 end;
    count1, count2 = Dict{Char,Int}(), Dict{Char,Int}(i=>0 for i in 'a':'z')
    start, left = true, 1
    for i in s1
        count1[i] = haskey(count1, i) ? count1[i] + 1 : 1
    end
    for (i, c) in enumerate(s2)
        if !haskey(count1, c)
            start = true
            empty!(count2)
        elseif count2[c] >= count1[c]
            for j in left:i
                s2[j] == c && (left = j + 1;break)
                count2[s2[j]] -= 1
            end
        else
            start && (start = false; left = i)
            count2[c] += 1
            all(count1[key] == count2[key] for key in keys(count1)) && return true
        end
    end
    return false
end
## @lc code=end
