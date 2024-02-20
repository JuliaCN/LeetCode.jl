# ---
# title: 14. Longest Common Prefix
# id: problem14
# author: zhwang
# date: 2022-03-15
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/longest-common-prefix/description/>
# hidden: true
# ---
# 
# Write a function to find the longest common prefix string amongst an array of
# strings.
# 
# If there is no common prefix, return an empty string `""`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: strs = ["flower","flow","flight"]
#     Output: "fl"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: strs = ["dog","racecar","car"]
#     Output: ""
#     Explanation: There is no common prefix among the input strings.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= strs.length <= 200`
#   * `0 <= strs[i].length <= 200`
#   * `strs[i]` consists of only lower-case English letters.
# 
# 
## @lc code=start
using LeetCode

function longest_common_prefix(strs::Vector{String})::String
    s1, s2 = minimum(strs), maximum(strs)
    pos = findfirst(i -> s1[i] != s2[i], 1:length(s1))
    return isnothing(pos) ? s1 : s1[1:(pos - 1)]
end

## @lc code=end
