# ---
# title: 815. Bus Routes
# id: problem815
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Breadth-first Search
# link: <https://leetcode.com/problems/bus-routes/description/>
# hidden: true
# ---
# 
# We have a list of bus routes. Each `routes[i]` is a bus route that the i-th
# bus repeats forever. For example if `routes[0] = [1, 5, 7]`, this means that
# the first bus (0-th indexed) travels in the sequence 1->5->7->1->5->7->1->...
# forever.
# 
# We start at bus stop `S` (initially not on a bus), and we want to go to bus
# stop `T`. Travelling by buses only, what is the least number of buses we must
# take to reach our destination? Return -1 if it is not possible.
# 
#     
#     
#     **Example:**
#     Input: 
#     routes = [[1, 2, 7], [3, 6, 7]]
#     S = 1
#     T = 6
#     Output: 2
#     Explanation: 
#     The best strategy is take the first bus to the bus stop 7, then take the second bus to the bus stop 6.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= routes.length <= 500`.
#   * `1 <= routes[i].length <= 10^5`.
#   * `0 <= routes[i][j] < 10 ^ 6`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
