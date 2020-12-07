# ---
# title: 1354. Construct Target Array With Multiple Sums
# id: problem1354
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Greedy
# link: <https://leetcode.com/problems/construct-target-array-with-multiple-sums/description/>
# hidden: true
# ---
# 
# Given an array of integers `target`. From a starting array, `A` consisting of
# all 1's, you may perform the following procedure :
# 
#   * let `x` be the sum of all elements currently in your array.
#   * choose index `i`, such that `0 <= i < target.size` and set the value of `A` at index `i` to `x`.
#   * You may repeat this procedure as many times as needed.
# 
# Return True if it is possible to construct the `target` array from `A`
# otherwise return False.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: target = [9,3,5]
#     Output: true
#     Explanation: Start with [1, 1, 1] 
#     [1, 1, 1], sum = 3 choose index 1
#     [1, 3, 1], sum = 5 choose index 2
#     [1, 3, 5], sum = 9 choose index 0
#     [9, 3, 5] Done
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: target = [1,1,1,2]
#     Output: false
#     Explanation: Impossible to create target array from [1,1,1,1].
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: target = [8,5]
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * `N == target.length`
#   * `1 <= target.length <= 5 * 10^4`
#   * `1 <= target[i] <= 10^9`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
