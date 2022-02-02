# ---
# title: 387. First Unique Character in a String
# id: problem387
# author: zhwang
# date: 2022-01-23
# difficulty: Easy
# categories: Hash Table, String
# link: <https://leetcode.com/problems/first-unique-character-in-a-string/description/>
# hidden: true
# ---
# 
# Given a string, find the first non-repeating character in it and return its
# index. If it doesn't exist, return -1.
# 
# **Examples:**
# 
#     
#     
#     s = "leetcode"
#     return 0.
#     
#     s = "loveleetcode"
#     return 2.
#     
# 
# 
# 
# **Note:** You may assume the string contains only lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function first_unique_char(s::String)::Int
    table = Dict{Char,Bool}()
    for i in s
        table[i] = !haskey(table, i)
    end
    for (i, st) in enumerate(s)
        table[st] && return i
    end
    return -1
end

## @lc code=end
