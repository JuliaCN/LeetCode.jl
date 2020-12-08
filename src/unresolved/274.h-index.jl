# ---
# title: 274. H-Index
# id: problem274
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Hash Table, Sort
# link: <https://leetcode.com/problems/h-index/description/>
# hidden: true
# ---
# 
# Given an array of citations (each citation is a non-negative integer) of a
# researcher, write a function to compute the researcher's h-index.
# 
# According to the [definition of h-index on
# Wikipedia](https://en.wikipedia.org/wiki/H-index): "A scientist has index _h_
# if _h_ of his/her _N_ papers have **at least** _h_ citations each, and the
# other _N − h_ papers have **no more than** _h_ citations each."
# 
# **Example:**
# 
#     
#     
#     Input: citations = [3,0,6,1,5]
#     Output: 3 
#     Explanation:[3,0,6,1,5] means the researcher has 5 papers in total and each of them had 
#                  received 3, 0, 6, 1, 5 citations respectively. 
#                  Since the researcher has 3 papers with **at least** 3 citations each and the remaining 
#                  two with **no more than** 3 citations each, her h-index is 3.
# 
# **Note:  **If there are several possible values for _h_ , the maximum one is
# taken as the h-index.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
