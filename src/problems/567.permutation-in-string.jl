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
using DataStructures

## Double Pointers
function check_inclusion(s1::String, s2::String)::Bool
    equal2c1(c::Accumulator) = all(c[i] == c1[i] for i in keys(c1))
    c1, n1, n2 = counter(s1), length(s1), length(s2)
    n2 < n1 && return false
    c2 = counter(s2[1:n1])
    equal2c1(c2) && return true
    for (i, j) in zip(1:(n2 - n1), (n1 + 1):n2)
        c2[s2[i]] -= 1
        c2[s2[j]] += 1
        equal2c1(c2) && return true
    end
    return false
end
## @lc code=end
