"""
@lc app=leetcode id=576 lang=python3

[576] Out of Boundary Paths

https://leetcode.com/problems/out-of-boundary-paths/description/

algorithms
Medium (33.50%)
Likes:    619
Dislikes: 139
Total Accepted:    31K
Total Submissions: 87.5K
Testcase Example:  '2\n2\n2\n0\n0'

There is an m by n grid with a ball. Given the start coordinate (i,j) of the
ball, you can move the ball to adjacent cell or cross the grid boundary in
four directions (up, down, left, right). However, you can at most move N
times. Find out the number of paths to move the ball out of grid boundary.
The answer may be very large, return it after mod 10^9 + 7.



Example 1:


Input: m = 2, n = 2, N = 2, i = 0, j = 0
Output: 6
Explanation:



Example 2:


Input: m = 1, n = 3, N = 3, i = 0, j = 1
Output: 12
Explanation:





Note:


Once you move the ball out of boundary, you cannot move it back.
The length and height of the grid is in range [1,50].
N is in range [0,50].




@lc code=start
"""
function find_paths(m, n, N, i, j)
    dp = zeros(Int, m, n)

    for _ in 1:N
        t = copy(dp)
        inds = CartesianIndices(t)
        for x in inds
            v = 0
            for dir in ((0, -1), (0, 1), (1, 0), (-1, 0))
                p = x + CartesianIndex(dir)
                v += p ∈ inds ? t[p] : 1
            end
            dp[x] = v
        end
    end
    return dp[i, j] % (10^9 + 7)
end
