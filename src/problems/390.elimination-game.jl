# ---
# title: 390. Elimination Game
# id: problem390
# author: Indigo
# date: 2021-06-20
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/elimination-game/description/>
# hidden: true
# ---
# 
# There is a list of sorted integers from 1 to _n_. Starting from left to right,
# remove the first number and every other number afterward until you reach the
# end of the list.
# 
# Repeat the previous step again, but this time from right to left, remove the
# right most number and every other number from the remaining numbers.
# 
# We keep repeating the steps again, alternating left to right and right to
# left, until a single number remains.
# 
# Find the last number that remains starting with a list of length _n_.
# 
# **Example:**
# 
#     
#     
#     Input:
#     n = 9,
#     _1_ 2 _3_ 4 _5_ 6 _7_ 8 _9_
#     2 _4_ 6 _8_
#     _2_ 6
#     6
#     
#     Output:
#     6
#     
# 
# 
## @lc code=start
using LeetCode

last_remaining(n::Int)::Int = n == 1 ? 1 : 2 * (n ÷ 2 + 1 - last_remaining(n ÷ 2))

## @lc code=end
