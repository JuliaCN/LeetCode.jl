# ---
# title: 344. Reverse String
# id: problem344
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Two Pointers, String
# link: <https://leetcode.com/problems/reverse-string/description/>
# hidden: true
# ---
# 
# Write a function that reverses a string. The input string is given as an array
# of characters `char[]`.
# 
# Do not allocate extra space for another array, you must do this by **modifying
# the input array  [in-place](https://en.wikipedia.org/wiki/In-
# place_algorithm)** with O(1) extra memory.
# 
# You may assume all the characters consist of [printable ascii
# characters](https://en.wikipedia.org/wiki/ASCII#Printable_characters).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: ["h","e","l","l","o"]
#     Output: ["o","l","l","e","h"]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ["H","a","n","n","a","h"]
#     Output: ["h","a","n","n","a","H"]
#     
# 
# 
## @lc code=start
using LeetCode

function reverse_string!(s::Vector{Char})::Nothing
    n = length(s)
    for i in 1:(n ÷ 2)
        s[i], s[end - i + 1] = s[end - i + 1], s[i]
    end
    return nothing
end

## @lc code=end
