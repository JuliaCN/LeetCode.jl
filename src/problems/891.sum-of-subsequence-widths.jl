# ---
# title: 891. Sum of Subsequence Widths
# id: problem891
# author: Indigo
# date: 2021-02-01

# difficulty: Hard
# categories: Array, Math
# link: <https://leetcode.com/problems/sum-of-subsequence-widths/description/>
# hidden: true
# ---
# 
# Given an array of integers `A`, consider all non-empty subsequences of `A`.
# 
# For any sequence S, let the  _width_  of S be the difference between the
# maximum and minimum element of S.
# 
# Return the sum of the widths of all subsequences of A.
# 
# As the answer may be very large, **return the answer modulo 10^9 + 7**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [2,1,3]
#     Output: 6
#     Explanation: Subsequences are [1], [2], [3], [2,1], [2,3], [1,3], [2,1,3].
#     The corresponding widths are 0, 0, 0, 1, 1, 2, 2.
#     The sum of these widths is 6.
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= A.length <= 20000`
#   * `1 <= A[i] <= 20000`
# 
# 
## @lc code=start
using LeetCode

function sum_subseq_widths(A::Vector{Int})
    MOD = Int(1e9 + 7)
    len = length(A)
    sort!(A)
    pow = fill(2, len)
    for i in 2:len
        pow[i] = (pow[i - 1] << 1) % MOD
    end
    res = 0
    for i in 2:(len - 1)
        res += (A[i]) * ((pow[i - 1] - pow[len - i])) % MOD
    end
    return mod1((res + (A[end] - A[1]) * (pow[len - 1] - 1) % MOD), MOD)
end
## @lc code=end
