# ---
# title: 738. Monotone Increasing Digits
# id: problem738
# author: Indigo
# date: 2020-12-16
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/monotone-increasing-digits/description/>
# hidden: true
# ---
# 
# Given a non-negative integer `N`, find the largest number that is less than or
# equal to `N` with monotone increasing digits.
# 
# (Recall that an integer has _monotone increasing digits_ if and only if each
# pair of adjacent digits `x` and `y` satisfy `x <= y`.)
# 
# **Example 1:**  
# 
#     
#     
#     Input: N = 10
#     Output: 9
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: N = 1234
#     Output: 1234
#     
# 
# **Example 3:**  
# 
#     
#     
#     Input: N = 332
#     Output: 299
#     
# 
# **Note:** `N` is an integer in the range `[0, 10^9]`.
# 
# 
## @lc code=start
using LeetCode

function monotone_increasing_digits(N::Int)::Int
    some_ones = 111111111
    res = 0
    for _ in 1:9 
        while res + some_ones > N
            some_ones ÷= 10           
        end
        res += some_ones
    end
    return res
end

## @lc code=end
