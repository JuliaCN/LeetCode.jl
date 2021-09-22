# ---
# title: 1109. Corporate Flight Bookings
# id: problem1109
# author: Indigo
# date: 2021-08-31
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
using LeetCode

function corp_flight_bookings(bookings::Vector{Vector{Int}}, n::Int)
    res = fill(0, n + 1)
    for b in bookings
        res[b[1]] += b[3]
        res[b[2] + 1] -= b[3]
    end
    cumsum!(res, res)
    @view(res[1:n])
end
## @lc code=end
