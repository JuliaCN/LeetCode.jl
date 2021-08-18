# ---
# title: 869. Reordered Power of 2
# id: problem869
# author: Indigo
# date: 2021-07-11
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/reordered-power-of-2/description/>
# hidden: true
# ---
# 
# Starting with a positive integer `N`, we reorder the digits in any order
# (including the original order) such that the leading digit is not zero.
# 
# Return `true` if and only if we can do this in a way such that the resulting
# number is a power of 2.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: 1
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: 10
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: 16
#     Output: true
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: 24
#     Output: false
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: 46
#     Output: true
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= N <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function reordered_power_of2(n::Integer)
    cntr1 = OffsetArray(fill(0, 10), -1)
    cntr2 = OffsetArray(fill(0, 10), -1)
    function count_num!(cntr, n::Integer)
        fill!(cntr, 0)
        for d in digits(n)
            cntr[d] += 1            
        end
        cntr
    end
    count_num!(cntr1, n)
    for i in 0:31
        (cntr1 == count_num!(cntr2, 1 << i)) && return true
    end
    return false
end
## @lc code=end
