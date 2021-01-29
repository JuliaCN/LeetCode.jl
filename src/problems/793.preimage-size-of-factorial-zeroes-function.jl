# ---
# title: 793. Preimage Size of Factorial Zeroes Function
# id: problem793
# author: Indigo
# date: 2021-01-29
# difficulty: Hard
# categories: Binary Search
# link: <https://leetcode.com/problems/preimage-size-of-factorial-zeroes-function/description/>
# hidden: true
# ---
# 
# Let `f(x)` be the number of zeroes at the end of `x!`. (Recall that `x! = 1 *
# 2 * 3 * ... * x`, and by convention, `0! = 1`.)
# 
# For example, `f(3) = 0` because 3! = 6 has no zeroes at the end, while `f(11)
# = 2` because 11! = 39916800 has 2 zeroes at the end. Given `K`, find how many
# non-negative integers `x` have the property that `f(x) = K`.
# 
#     
#     
#     **Example 1:**
#     Input: K = 0
#     Output: 5
#     Explanation: 0!, 1!, 2!, 3!, and 4! end with K = 0 zeroes.
#     
#     **Example 2:**
#     Input: K = 5
#     Output: 0
#     Explanation: There is no x such that x! ends in K = 5 zeroes.
#     
# 
# **Note:**
# 
#   * `K` will be an integer in the range `[0, 10^9]`.
# 
# 
## @lc code=start
using LeetCode

function preimage_size_fzf(K::Int)
    zeta(x) = x > 0 ? x ÷ 5 + zeta(x ÷ 5) : 0
    lo, hi = K, 5 * K + 1
    while lo < hi
        mid = (lo + hi) ÷ 2
        z_mid = zeta(mid)
        if z_mid == K
            return 5
        elseif z_mid < K
            lo = mid + 1
        else
            hi = mid
        end
    end
    return 0
end
## @lc code=end
