# ---
# title: 400. Nth Digit
# id: problem400
# author: Indigo
# date: 2021-06-20
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/nth-digit/description/>
# hidden: true
# ---
# 
# Find the _n_ th digit of the infinite integer sequence 1, 2, 3, 4, 5, 6, 7, 8,
# 9, 10, 11, ...
# 
# **Note:**  
# _n_ is positive and will fit within the range of a 32-bit signed integer ( _n_
# < 231).
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     3
#     
#     Output:
#     3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     11
#     
#     Output:
#     0
#     
#     Explanation:
#     The 11th digit of the sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ... is a 0, which is part of the number 10.
#     
# 
# 
## @lc code=start
using LeetCode

function find_nth_digit(n::Int)
    ant = [0, 10, 190, 2890, 38890, 488890, 5888890, 68888890, 788888890];
    num_begin = [0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000]
    idx = searchsortedlast(ant, n)
    num = (n - ant[idx]) ÷ idx + num_begin[idx]
    posi = (n - ant[idx]) % idx
    return num % (10 ^ (idx - posi)) ÷ 10 ^ (idx - posi - 1)
end
## @lc code=end
