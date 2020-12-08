# ---
# title: 352. Data Stream as Disjoint Intervals
# id: problem352
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Binary Search, Ordered Map
# link: <https://leetcode.com/problems/data-stream-as-disjoint-intervals/description/>
# hidden: true
# ---
# 
# Given a data stream input of non-negative integers a1, a2, ..., an, ...,
# summarize the numbers seen so far as a list of disjoint intervals.
# 
# For example, suppose the integers from the data stream are 1, 3, 7, 2, 6, ...,
# then the summary will be:
# 
#     
#     
#     [1, 1]
#     [1, 1], [3, 3]
#     [1, 1], [3, 3], [7, 7]
#     [1, 3], [7, 7]
#     [1, 3], [6, 7]
#     
# 
# 
# 
# **Follow up:**
# 
# What if there are lots of merges and the number of disjoint intervals are
# small compared to the data stream's size?
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
