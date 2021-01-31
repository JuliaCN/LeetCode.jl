# ---
# title: 1012. Numbers With Repeated Digits
# id: problem1012
# author: Indigo
# date: 2021-01-30
# difficulty: Hard
# categories: Math, Dynamic Programming
# link: <https://leetcode.com/problems/numbers-with-repeated-digits/description/>
# hidden: true
# ---
# 
# Given a positive integer `N`, return the number of positive integers less than
# or equal to `N` that have at least 1 repeated digit.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: 20
#     Output: 1
#     Explanation: The only positive number (<= 20) with at least 1 repeated digit is 11.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: 100
#     Output: 10
#     Explanation: The positive numbers (<= 100) with atleast 1 repeated digit are 11, 22, 33, 44, 55, 66, 77, 88, 99, and 100.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: 1000
#     Output: 262
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= N <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function num_dup_digits_at_most_n(N::Int)
    ori = N
    b = 9
    while 10^b > N
        b -= 1
    end
    res = sum(binomial(9, i) * factorial(i) * 9 for i in 0:(b - 1))
    num_bits = Set{Int}()
    k = b
    while b >= 0
        num_bit = N ÷ 10^b
        N %= 10^b
        if !(num_bit in num_bits)
            if isempty(num_bits)
                le_num = num_bit - 1
            else
                le_num = num_bit - sum(nb < num_bit for nb in num_bits)
            end
            res += binomial(9 - k + b, b) * factorial(b) * (le_num)
            push!(num_bits, num_bit)
        else
            return ori - res
        end
        b -= 1
    end
    ori - res - 1
end
## @lc code=end
