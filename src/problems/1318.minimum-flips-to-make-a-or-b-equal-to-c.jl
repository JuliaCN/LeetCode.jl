# ---
# title: 1318. Minimum Flips to Make a OR b Equal to c
# id: problem1318
# author: Indigo
# date: 2021-01-23
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/description/>
# hidden: true
# ---
# 
# Given 3 positives numbers `a`, `b` and `c`. Return the minimum flips required
# in some bits of `a` and `b` to make ( `a` OR `b` == `c` ). (bitwise OR
# operation).  
# Flip operation consists of change  **any**  single bit 1 to 0 or change the
# bit 0 to 1 in their binary representation.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/01/06/sample_3_1676.png)
# 
#     
#     
#     Input: a = 2, b = 6, c = 5
#     Output: 3
#     Explanation: After flips a = 1 , b = 4 , c = 5 such that (a OR b == c)
# 
# **Example 2:**
# 
#     
#     
#     Input: a = 4, b = 2, c = 7
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: a = 1, b = 2, c = 3
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= a <= 10^9`
#   * `1 <= b <= 10^9`
#   * `1 <= c <= 10^9`
# 
# 
## @lc code=start
using LeetCode

min_flip(a, b, c) = min_flip(a|>Int32, b|>Int32, c|>Int32)
function min_flip(a::Int32, b::Int32, c::Int32)
    sa, sb, sc = bitstring.([a, b, c])
    res = 0
    for i in 1:32
        if sc[i] == '1' 
            (sa[i] == '0' == sb[i]) && (res += 1)
        else
            res += (sa[i] == '1') + (sb[i] == '1')
        end
    end
    res
end
## @lc code=end
