# ---
# title: 43. Multiply Strings
# id: problem43
# author: Qling
# date: 2021-04-03
# difficulty: Medium
# categories: Math, String
# link: <https://leetcode.com/problems/multiply-strings/description/>
# hidden: true
# ---
# 
# Given two non-negative integers `num1` and `num2` represented as strings,
# return the product of `num1` and `num2`, also represented as a string.
# 
# **Note:**  You must not use any built-in BigInteger library or convert the
# inputs to integer directly.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: num1 = "2", num2 = "3"
#     Output: "6"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: num1 = "123", num2 = "456"
#     Output: "56088"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= num1.length, num2.length <= 200`
#   * `num1` and `num2` consist of digits only.
#   * Both `num1` and `num2` do not contain any leading zero, except the number `0` itself.
# 
# 
## @lc code=start
using LeetCode

function trap(height::Vector{Int})::Int32
    left, right = 1, length(height)
    left_max, right_max = 0, 0
    res = 0

    while left <= right
        if height[left] < height[right]
            if (span = left_max - height[left]) > 0
                res += span
            else
                left_max = height[left]
            end

            left += 1
        else
            if (span = right_max - height[right]) > 0
                res += span
            else
                right_max = height[right]
            end

            right -= 1
        end
    end

    return res
end
## @lc code=end
