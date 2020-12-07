# ---
# title: 312. Burst Balloons
# id: problem312
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Divide and Conquer, Dynamic Programming
# link: <https://leetcode.com/problems/burst-balloons/description/>
# hidden: true
# ---
# 
# Given `n` balloons, indexed from `0` to `n-1`. Each balloon is painted with a
# number on it represented by array `nums`. You are asked to burst all the
# balloons. If the you burst balloon `i` you will get `nums[left] * nums[i] *
# nums[right]` coins. Here `left` and `right` are adjacent indices of `i`. After
# the burst, the `left` and `right` then becomes adjacent.
# 
# Find the maximum coins you can collect by bursting the balloons wisely.
# 
# **Note:**
# 
#   * You may imagine `nums[-1] = nums[n] = 1`. They are not real therefore you can not burst them.
#   * 0 ≤ `n` ≤ 500, 0 ≤ `nums[i]` ≤ 100
# 
# **Example:**
# 
#     
#     
#     Input: [3,1,5,8]
#     Output: 167 
#     Explanation:nums = [3,1,5,8] --> [3,5,8] -->   [3,8]   -->  [8]  --> []
#                  coins =  3*1*5      +  3*5*8    +  1*3*8      + 1*8*1   = 167
#     
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
