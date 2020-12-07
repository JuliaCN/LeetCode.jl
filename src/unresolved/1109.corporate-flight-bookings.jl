# ---
# title: 1109. Corporate Flight Bookings
# id: problem1109
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Math
# link: <https://leetcode.com/problems/corporate-flight-bookings/description/>
# hidden: true
# ---
# 
# There are `n` flights, and they are labeled from `1` to `n`.
# 
# We have a list of flight bookings.  The `i`-th booking `bookings[i] = [i, j,
# k]` means that we booked `k` seats from flights labeled `i` to `j` inclusive.
# 
# Return an array `answer` of length `n`, representing the number of seats
# booked on each flight in order of their label.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: bookings = [[1,2,10],[2,3,20],[2,5,25]], n = 5
#     Output: [10,55,45,25,25]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= bookings.length <= 20000`
#   * `1 <= bookings[i][0] <= bookings[i][1] <= n <= 20000`
#   * `1 <= bookings[i][2] <= 10000`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
