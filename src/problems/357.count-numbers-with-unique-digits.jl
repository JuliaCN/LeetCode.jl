# ---
# title: 357. Count Numbers with Unique Digits
# id: problem357
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Math, Dynamic Programming, Backtracking
# link: <https://leetcode.com/problems/count-numbers-with-unique-digits/description/>
# hidden: true
# ---
# 
# Given a **non-negative** integer n, count all numbers with unique digits, x,
# where 0 ≤ x < 10n.
# 
# **Example:**
# 
#     
#     
#     Input: 2
#     Output: 91 
#     Explanation: The answer should be the total numbers in the range of 0 ≤ x < 100, 
#                  excluding 11,22,33,44,55,66,77,88,99
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= n <= 8`
# 
# 
## @lc code=start
using LeetCode

function count_numbers_with_unique_digits(n::Int)
    n > 10 && return count_numbers_with_unique_digits(10)
    n == 0 && return 1
    return 9 * binomial(9, n - 1) * factorial(n - 1) +
           count_numbers_with_unique_digits(n - 1)
end
## @lc code=end
