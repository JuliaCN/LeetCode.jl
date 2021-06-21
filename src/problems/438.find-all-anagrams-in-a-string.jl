# ---
# title: 438. Find All Anagrams in a String
# id: problem438
# author: Indigo
# date: 2021-06-21
# difficulty: Medium
# categories: Hash Table
# link: <https://leetcode.com/problems/find-all-anagrams-in-a-string/description/>
# hidden: true
# ---
# 
# Given a string **s** and a **non-empty** string **p** , find all the start
# indices of **p** 's anagrams in **s**.
# 
# Strings consists of lowercase English letters only and the length of both
# strings **s** and **p** will not be larger than 20,100.
# 
# The order of output does not matter.
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     s: "cbaebabacd" p: "abc"
#     
#     Output:
#     [0, 6]
#     
#     Explanation:
#     The substring with start index = 0 is "cba", which is an anagram of "abc".
#     The substring with start index = 6 is "bac", which is an anagram of "abc".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     s: "abab" p: "ab"
#     
#     Output:
#     [0, 1, 2]
#     
#     Explanation:
#     The substring with start index = 0 is "ab", which is an anagram of "ab".
#     The substring with start index = 1 is "ba", which is an anagram of "ab".
#     The substring with start index = 2 is "ab", which is an anagram of "ab".
#     
# 
# 
## @lc code=start
using LeetCode

function find_anagrams(s::String, p::String)
    len = length(p)
    cntp = fill(0, 26)
    cnts = cntp[:]
    res = Int[]
    for c in p
        cntp[c - 'a' + 1] += 1
    end
    for i in 1:len-1
        cnts[s[i] - 'a' + 1] += 1
    end
    for i in len:length(s)
        cnts[s[i] - 'a' + 1] += 1
        cnts == cntp && push!(res, i - len + 1)
        cnts[s[i - len + 1] - 'a' + 1] -= 1        
    end
    return res
end
## @lc code=end
