# ---
# title: 754. Reach a Number
# id: problem754
# author: Indigo
# date: 2021-07-11
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/reach-a-number/description/>
# hidden: true
# ---
# 
# You are standing at position `0` on an infinite number line. There is a goal
# at position `target`.
# 
# On each move, you can either go left or right. During the _n_ -th move
# (starting from 1), you take _n_ steps.
# 
# Return the minimum number of steps required to reach the destination.
# 
# **Example 1:**  
# 
#     
#     
#     Input: target = 3
#     Output: 2
#     Explanation:
#     On the first move we step from 0 to 1.
#     On the second step we step from 1 to 3.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: target = 2
#     Output: 3
#     Explanation:
#     On the first move we step from 0 to 1.
#     On the second move we step  from 1 to -1.
#     On the third move we step from -1 to 2.
#     
# 
# **Note:**  
# 
# * `target` will be a non-zero integer in the range `[-10^9, 10^9]`.
# 
# 
## @lc code=start
using LeetCode

function reach_number(target::Integer)
    target = abs(target)
    k = 0
    while target > 0
        k += 1
        target = target - k
    end
    return iseven(target) ? k : k + 1 + k % 2
end
## @lc code=end
