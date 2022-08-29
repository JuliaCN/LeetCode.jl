# ---
# title: 1374. Generate a String With Characters That Have Odd Counts
# id: problem1374
# author: zhwang
# date: 2022-08-04
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/description/>
# hidden: true
# ---
# 
# Given an integer `n`, _return a string with`n` characters such that each
# character in such string occurs **an odd number of times**_.
# 
# The returned string must contain only lowercase English letters. If there are
# multiples valid strings, return **any** of them.  
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 4
#     Output: "pppz"
#     Explanation: "pppz" is a valid string since the character 'p' occurs three times and the character 'z' occurs once. Note that there are many other valid strings such as "ohhh" and "love".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2
#     Output: "xy"
#     Explanation: "xy" is a valid string since the characters 'x' and 'y' occur once. Note that there are many other valid strings such as "ag" and "ur".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 7
#     Output: "holasss"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 500`
# 
# 
## @lc code=start
using LeetCode
generate_the_string(n::Int) = isodd(n) ? 'a'^n : 'a' * 'b'^(n - 1)

## @lc code=end
