# ---
# title: 447. Number of Boomerangs
# id: problem447
# author: Qling
# date: 2021-05-30
# difficulty: Medium
# categories: Hash Table, Math
# link: <https://leetcode.com/problems/number-of-boomerangs/description/>
# hidden: true
# ---
# 
# You are given `n` `points` in the plane that are all **distinct** , where
# `points[i] = [xi, yi]`. A **boomerang**  is a tuple of points `(i, j, k)` such
# that the distance between `i` and `j` equals the distance between `i` and `k`
# **(the order of the tuple matters)**.
# 
# Return  _the number of boomerangs_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: points = [[0,0],[1,0],[2,0]]
#     Output: 2
#     Explanation: The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: points = [[1,1],[2,2],[3,3]]
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: points = [[1,1]]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n == points.length`
#   * `1 <= n <= 500`
#   * `points[i].length == 2`
#   * `-104 <= xi, yi <= 104`
#   * All the points are **unique**.
# 
# 
## @lc code=start
using LeetCode
using DataStructures

function number_of_boomerangs(points::Vector{Vector{Int}})::Int
    res = 0
    for p in points
        distance_frequency = DefaultDict(0)
        for q in points
            p == q && continue
            dis = (p[1] - q[1])^2 + (p[2] - q[2])^2
            distance_frequency[dis] += 1
        end

        for k in values(distance_frequency)
            k > 1 && (res += k * (k - 1))
        end
    end

    return res
end
## @lc code=end
