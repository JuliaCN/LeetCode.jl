# ---
# title: 524. Longest Word in Dictionary through Deleting
# id: problem524
# author: Indigo
# date: 2021-06-22
# difficulty: Medium
# categories: Two Pointers, Sort
# link: <https://leetcode.com/problems/longest-word-in-dictionary-through-deleting/description/>
# hidden: true
# ---
# 
# Given a string and a string dictionary, find the longest string in the
# dictionary that can be formed by deleting some characters of the given string.
# If there are more than one possible results, return the longest word with the
# smallest lexicographical order. If there is no possible result, return the
# empty string.
# 
# **Example 1:**  
# 
#     
#     
#     Input:
#     s = "abpcplea", d = ["ale","apple","monkey","plea"]
#     
#     Output: 
#     "apple"
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input:
#     s = "abpcplea", d = ["a","b","c"]
#     
#     Output: 
#     "a"
#     
# 
# **Note:**  
# 
#   1. All the strings in the input will only contain lower-case letters.
#   2. The size of the dictionary won't exceed 1,000.
#   3. The length of all the strings in the input won't exceed 1,000.
# 
# 
## @lc code=start
using LeetCode

function find_longest_word(s::String, dictionary::Vector{String})
    function is_subsequence(s::String, t::String)::Bool
        i, j = 1, 1
        lens, lent = length(s), length(t)
        while j <= lent
            if s[i] == t[j]
                i += 1
                i > lens && return true
            end
            j += 1
        end
        return false
    end
    res = ""
    for str in dictionary
        (is_subsequence(str, s) && (length(res) < length(str) || res > str)) && (res = str)
    end
    return res
end
## @lc code=end
