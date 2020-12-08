# ---
# title: 753. Cracking the Safe
# id: problem753
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Math, Depth-first Search
# link: <https://leetcode.com/problems/cracking-the-safe/description/>
# hidden: true
# ---
# 
# There is a box protected by a password. The password is a sequence of `n`
# digits where each digit can be one of the first `k` digits `0, 1, ..., k-1`.
# 
# While entering a password, the last `n` digits entered will automatically be
# matched against the correct password.
# 
# For example, assuming the correct password is `"345"`, if you type `"012345"`,
# the box will open because the correct password matches the suffix of the
# entered password.
# 
# Return any password of **minimum length** that is guaranteed to open the box
# at some point of entering it.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 1, k = 2
#     Output: "01"
#     **Note:** "10" will be accepted too.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2, k = 2
#     Output: "00110"
#     **Note:** "01100", "10011", "11001" will be accepted too.
#     
# 
# 
# 
# **Note:**
# 
#   1. `n` will be in the range `[1, 4]`.
#   2. `k` will be in the range `[1, 10]`.
#   3. `k^n` will be at most `4096`.
# 
# 
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
