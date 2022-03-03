# ---
# title: 50. Pow(x, n)
# id: problem50
# author: zhwang
# date: 2022-03-02
# difficulty: Medium
# categories: Math, Binary Search
# link: <https://leetcode.com/problems/powx-n/description/>
# hidden: true
# ---
# 
# Implement [pow( _x_ , _n_
# )](http://www.cplusplus.com/reference/valarray/pow/), which calculates  _x_
# raised to the power _n_ (i.e. xn).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: x = 2.00000, n = 10
#     Output: 1024.00000
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: x = 2.10000, n = 3
#     Output: 9.26100
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: x = 2.00000, n = -2
#     Output: 0.25000
#     Explanation: 2-2 = 1/22 = 1/4 = 0.25
#     
# 
# 
# 
# **Constraints:**
# 
#   * `-100.0 < x < 100.0`
#   * `-231 <= n <= 231-1`
#   * `-104 <= xn <= 104`
# 
# 
## @lc code=start
using LeetCode

function my_pow(x::Float64, n::Int)::Float64
    n == 0 && return 1
    if n < 0
        x, n = 1 / x, -n
    end
    res, extra = x, 1
    while n > 1
        n & 1 == 1 && (extra *= res)
        res *= res
        n >>= 1
    end
    return res * extra
end
## @lc code=end
