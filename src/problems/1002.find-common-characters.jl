# ---
# title: 1002. Find Common Characters
# id: problem1002
# author: Indigo
# date: 2021-01-30
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/find-common-characters/description/>
# hidden: true
# ---
# 
# Given an array `A` of strings made only from lowercase letters, return a list
# of all characters that show up in all strings within the list **(including
# duplicates)**.  For example, if a character occurs 3 times in all strings but
# not 4 times, you need to include that character three times in the final
# answer.
# 
# You may return the answer in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: ["bella","label","roller"]
#     Output: ["e","l","l"]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ["cool","lock","cook"]
#     Output: ["c","o"]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 100`
#   2. `1 <= A[i].length <= 100`
#   3. `A[i][j]` is a lowercase letter
# 
# 
## @lc code=start
using LeetCode

function common_chars(A::Vector{String})
    cnt = counter(A[1])
    for i in 2:length(A)
        tmp_cnt = counter(A[i])
        for k in union(keys(tmp_cnt), keys(cnt))
            cnt[k] = min(cnt[k], tmp_cnt[k]) 
        end
    end
    vcat([fill(k, v) for (k, v) in cnt if v > 0]...)
end
## @lc code=end
