# ---
# title: 552. Student Attendance Record II
# id: problem552
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/student-attendance-record-ii/description/>
# hidden: true
# ---
# 
# Given a positive integer **n** , return the number of all possible attendance
# records with length n, which will be regarded as rewardable. The answer may be
# very large, return it after mod 109 \+ 7.
# 
# A student attendance record is a string that only contains the following three
# characters:
# 
#   1. **'A'** : Absent. 
#   2. **'L'** : Late.
#   3. **'P'** : Present. 
# 
# A record is regarded as rewardable if it doesn't contain **more than one 'A'
# (absent)** or **more than two continuous 'L' (late)**.
# 
# **Example 1:**  
# 
#     
#     
#     Input: n = 2
#     Output: 8 
#     Explanation:
#     There are 8 records with length 2 will be regarded as rewardable:
#     "PP" , "AP", "PA", "LP", "PL", "AL", "LA", "LL"
#     Only "AA" won't be regarded as rewardable owing to more than one absent times. 
#     
# 
# **Note:** The value of **n** won't exceed 100,000.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
