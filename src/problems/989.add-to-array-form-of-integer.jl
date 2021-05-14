# ---
# title: 989. Add to Array-Form of Integer
# id: problem989
# author: Qling
# date: 2021-05-10
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/add-to-array-form-of-integer/description/>
# hidden: true
# ---
# 
# For a non-negative integer `X`, the  _array-form of`X`_ is an array of its
# digits in left to right order.  For example, if `X = 1231`, then the array
# form is `[1,2,3,1]`.
# 
# Given the array-form `A` of a non-negative integer `X`, return the array-form
# of the integer `X+K`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1,2,0,0], K = 34
#     Output: [1,2,3,4]
#     Explanation: 1200 + 34 = 1234
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [2,7,4], K = 181
#     Output: [4,5,5]
#     Explanation: 274 + 181 = 455
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [2,1,5], K = 806
#     Output: [1,0,2,1]
#     Explanation: 215 + 806 = 1021
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
#     Output: [1,0,0,0,0,0,0,0,0,0,0]
#     Explanation: 9999999999 + 1 = 10000000000
#     
# 
# 
# 
# **Note：**
# 
#   1. `1 <= A.length <= 10000`
#   2. `0 <= A[i] <= 9`
#   3. `0 <= K <= 10000`
#   4. If `A.length > 1`, then `A[0] != 0`
# 
# 
## @lc code=start
using LeetCode

function add_to_array_form(num::Vector{Int}, k::Int)::Vector{Int}
    n = length(num)
    i, val, carry = n, 0, 0
    res = Int[]

    while i > 0 || k != 0
        x = i > 0 ? num[i] : 0
        y = k != 0 ? k % 10 : 0

        val = x + y + carry
        append!(res, val % 10)
        carry = val ÷ 10
        i, k = i - 1, k ÷ 10
    end

    if carry > 0
        append!(res, carry)
    end

    return reverse(res)
end