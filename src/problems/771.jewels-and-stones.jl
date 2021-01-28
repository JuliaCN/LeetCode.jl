# ---
# title: 771. Jewels and Stones
# id: problem771
# author: Indigo
# date: 2021-01-28
# difficulty: Easy
# categories: Hash Table
# link: <https://leetcode.com/problems/jewels-and-stones/description/>
# hidden: true
# ---
# 
# You're given strings `J` representing the types of stones that are jewels, and
# `S` representing the stones you have.  Each character in `S` is a type of
# stone you have.  You want to know how many of the stones you have are also
# jewels.
# 
# The letters in `J` are guaranteed distinct, and all characters in `J` and `S`
# are letters. Letters are case sensitive, so `"a"` is considered a different
# type of stone from `"A"`.
# 
# **Example 1:**
# 
#     
#     
#     Input: J = "aA", S = "aAAbbbb"
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: J = "z", S = "ZZ"
#     Output: 0
#     
# 
# **Note:**
# 
#   * `S` and `J` will consist of letters and have length at most 50.
#   * The characters in `J` are distinct.
# 
# 
## @lc code=start
using LeetCode

function num_jewels_in_stones(jewels::String, stones::String)
    mp = fill(0, 128)
    for i in codeunits(jewels) 
        mp[i] = 1        
    end
    sum(mp[i] for i in codeunits(stones))
end
## @lc code=end
