# ---
# title: 546. Remove Boxes
# id: problem546
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming, Depth-first Search
# link: <https://leetcode.com/problems/remove-boxes/description/>
# hidden: true
# ---
# 
# Given several boxes with different colors represented by different positive
# numbers.  
# You may experience several rounds to remove boxes until there is no box left.
# Each time you can choose some continuous boxes with the same color (composed
# of k boxes, k >= 1), remove them and get `k*k` points.  
# Find the maximum points you can get.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: boxes = [1,3,2,2,2,3,4,3,1]
#     Output: 23
#     Explanation:
#     [1, 3, 2, 2, 2, 3, 4, 3, 1] 
#     ----> [1, 3, 3, 4, 3, 1] (3*3=9 points) 
#     ----> [1, 3, 3, 3, 1] (1*1=1 points) 
#     ----> [1, 1] (3*3=9 points) 
#     ----> [] (2*2=4 points)
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= boxes.length <= 100`
#   * `1 <= boxes[i] <= 100`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
