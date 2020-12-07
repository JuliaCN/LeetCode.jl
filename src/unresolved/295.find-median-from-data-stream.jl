# ---
# title: 295. Find Median from Data Stream
# id: problem295
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Heap, Design
# link: <https://leetcode.com/problems/find-median-from-data-stream/description/>
# hidden: true
# ---
# 
# Median is the middle value in an ordered integer list. If the size of the list
# is even, there is no middle value. So the median is the mean of the two middle
# value.
# 
# For example,
# 
# `[2,3,4]`, the median is `3`
# 
# `[2,3]`, the median is `(2 + 3) / 2 = 2.5`
# 
# Design a data structure that supports the following two operations:
# 
#   * void addNum(int num) - Add a integer number from the data stream to the data structure.
#   * double findMedian() - Return the median of all elements so far.
# 
# 
# 
# **Example:**
# 
#     
#     
#     addNum(1)
#     addNum(2)
#     findMedian() -> 1.5
#     addNum(3) 
#     findMedian() -> 2
#     
# 
# 
# 
# **Follow up:**
# 
#   1. If all integer numbers from the stream are between 0 and 100, how would you optimize it?
#   2. If 99% of all integer numbers from the stream are between 0 and 100, how would you optimize it?
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
