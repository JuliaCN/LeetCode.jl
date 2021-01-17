# ---
# title: 830. Positions of Large Groups
# id: problem830
# author: Indigo
# date: 2021-01-17
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/positions-of-large-groups/description/>
# hidden: true
# ---
# 
# In a string `s` of lowercase letters, these letters form consecutive groups of
# the same character.
# 
# For example, a string like `s = "abbxxxxzyy"` has the groups `"a"`, `"bb"`,
# `"xxxx"`, `"z"`, and `"yy"`.
# 
# A group is identified by an interval `[start, end]`, where `start` and `end`
# denote the start and end indices (inclusive) of the group. In the above
# example, `"xxxx"` has the interval `[3,6]`.
# 
# A group is considered  **large**  if it has 3 or more characters.
# 
# Return  _the intervals of every **large** group sorted in  **increasing order
# by start index**_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "abbxxxxzzy"
#     Output: [[3,6]]
#     **Explanation** : "xxxx" is the only large group with start index 3 and end index 6.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "abc"
#     Output: []
#     **Explanation** : We have groups "a", "b", and "c", none of which are large groups.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "abcdddeeeeaabbbcd"
#     Output: [[3,5],[6,9],[12,14]]
#     **Explanation** : The large groups are "ddd", "eeee", and "bbb".
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "aba"
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 1000`
#   * `s` contains lower-case English letters only.
# 
# 
## @lc code=start
using LeetCode

function large_group_positions(s::String)::Vector{Vector{Int}}
    ch = s[1]
    bg = 1
    res = Vector{Int}[]
    for i in 2:length(s)
        if s[i] != ch
            if i - bg > 2
                push!(res, [bg - 1, i - 2]) #1-index to 0-index 
            end
            ch = s[i]
            bg = i 
        end
    end
    res
end
## @lc code=end
