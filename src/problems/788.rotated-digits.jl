# ---
# title: 788. Rotated Digits
# id: problem788
# author: Indigo
# date: 2021-01-29
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/rotated-digits/description/>
# hidden: true
# ---
# 
# X is a good number if after rotating each digit individually by 180 degrees,
# we get a valid number that is different from X.  Each digit must be rotated -
# we cannot choose to leave it alone.
# 
# A number is valid if each digit remains a digit after rotation. 0, 1, and 8
# rotate to themselves; 2 and 5 rotate to each other (on this case they are
# rotated in a different direction, in other words 2 or 5 gets mirrored); 6 and
# 9 rotate to each other, and the rest of the numbers do not rotate to any other
# number and become invalid.
# 
# Now given a positive number `N`, how many numbers X from `1` to `N` are good?
# 
#     
#     
#     **Example:**
#     Input: 10
#     Output: 4
#     Explanation: 
#     There are four good numbers in the range [1, 10] : 2, 5, 6, 9.
#     Note that 1 and 10 are not good numbers, since they remain unchanged after rotating.
#     
# 
# **Note:**
# 
#   * N  will be in range `[1, 10000]`.
# 
# 
## @lc code=start
using LeetCode

function rotated_digits(N::Int)
    if N <= 9
        return count(==(1), [0, 1, -1, -1, 1, 1, -1, 0, 1][1:N])
    end
    ans, dp = 0, vcat([0, 0, 1, -1, -1, 1, 1, -1, 0, 1], fill(0, N - 9))
    for i in 1:N-1
        dp[i + 1] = (-1 in [dp[i ÷ 10 + 1], dp[i % 10 + 1]]) ? -1 : (dp[i ÷ 10 + 1] | dp[i % 10 + 1])
        ans += (dp[i + 1] == 1)
    end
    ans
end
## @lc code=end
