# ---
# title: 28. Implement strStr()
# id: problem28
# author: Pixia1234
# date: 2024-07-13
# difficulty: Easy
# categories: Two Pointers, String
# link: <https://leetcode.com/problems/implement-strstr/description/>
# hidden: true
# ---
# 
# Implement [strStr()](http://www.cplusplus.com/reference/cstring/strstr/).
# 
# Return the index of the first occurrence of needle in haystack, or `-1` if
# `needle` is not part of `haystack`.
# 
# **Clarification:**
# 
# What should we return when `needle` is an empty string? This is a great
# question to ask during an interview.
# 
# For the purpose of this problem, we will return 0 when `needle` is an empty
# string. This is consistent to C's
# [strstr()](http://www.cplusplus.com/reference/cstring/strstr/) and Java's
# [indexOf()](https://docs.oracle.com/javase/7/docs/api/java/lang/String.html#indexOf\(java.lang.String\)).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: haystack = "hello", needle = "ll"
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: haystack = "aaaaa", needle = "bba"
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: haystack = "", needle = ""
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= haystack.length, needle.length <= 5 * 104`
#   * `haystack` and `needle` consist of only lower-case English characters.
# 
# 
## @lc code=start
using LeetCode

function strStr(haystack::String, needle::String)
    needle == "" && return 0
    for i in 1:(length(haystack) - length(needle) + 1)
        if @view(haystack[i:(i + length(needle) - 1)]) == needle
            return i - 1 # Notice that Julia is 1-indexed, and here we need 0-indexed so minus 1
        end
    end
    return -1
end

function strStr2(haystack::AbstractString, needle::AbstractString)
    # border case
    isempty(needle) && return 0
    length(needle) > length(haystack) && return -1
    # match needle
    needle == @view(haystack[1:length(needle)]) && return 0
    # recursive search
    ind = @views strStr2(haystack[2:end], needle)
    return ind == -1 ? -1 : ind + 1
end
## @lc code=end
