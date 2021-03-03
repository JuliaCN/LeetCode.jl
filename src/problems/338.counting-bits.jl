# ---
# title: 338. Counting Bits
# id: problem338
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming, Bit Manipulation
# link: <https://leetcode.com/problems/counting-bits/description/>
# hidden: true
# ---
# 
# Given a non negative integer number **num**. For every numbers **i** in the
# range **0 ≤ i ≤ num** calculate the number of 1's in their binary
# representation and return them as an array.
# 
# **Example 1:**
# 
#     
#     
#     Input: 2
#     Output: [0,1,1]
# 
# **Example 2:**
# 
#     
#     
#     Input: 5
#     Output:[0,1,1,2,1,2]
#     
# 
# **Follow up:**
# 
#   * It is very easy to come up with a solution with run time **O(n*sizeof(integer))**. But can you do it in linear time **O(n)** /possibly in a single pass?
#   * Space complexity should be **O(n)**.
#   * Can you do it like a boss? Do it without using any builtin function like **__builtin_popcount** in c++ or in any other language.
# 
# 
## @lc code=start
using LeetCode

function count_bits(num::Int)
    res = fill(1, num)
    for i in 2:num
        res[i] = res[i >> 1] + (i & 1)
    end
    pushfirst!(res, 0)
end
## @lc code=end
