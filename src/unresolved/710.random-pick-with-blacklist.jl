# ---
# title: 710. Random Pick with Blacklist
# id: problem710
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Hash Table, Binary Search, Sort, Random
# link: <https://leetcode.com/problems/random-pick-with-blacklist/description/>
# hidden: true
# ---
# 
# Given a blacklist `B` containing unique integers from `[0, N)`, write a
# function to return a uniform random integer from `[0, N)` which is **NOT**  in
# `B`.
# 
# Optimize it such that it minimizes the call to system's `Math.random()`.
# 
# **Note:**
# 
#   1. `1 <= N <= 1000000000`
#   2. `0 <= B.length < min(100000, N)`
#   3. `[0, N)` does NOT include N. See [interval notation](https://en.wikipedia.org/wiki/Interval_\(mathematics\)).
# 
# **Example 1:**
# 
#     
#     
#     Input: ["Solution","pick","pick","pick"]
#     [[1,[]],[],[],[]]
#     Output: [null,0,0,0]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ["Solution","pick","pick","pick"]
#     [[2,[]],[],[],[]]
#     Output: [null,1,1,1]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: ["Solution","pick","pick","pick"]
#     [[3,[1]],[],[],[]]
#     Output: [null,0,0,2]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: ["Solution","pick","pick","pick"]
#     [[4,[2]],[],[],[]]
#     Output: [null,1,3,1]
#     
# 
# **Explanation of Input Syntax:**
# 
# The input is two lists: the subroutines called and their arguments.
# `Solution`'s constructor has two arguments, `N` and the blacklist `B`. `pick`
# has no arguments. Arguments are always wrapped with a list, even if there
# aren't any.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
