# ---
# title: 233. Number of Digit One
# id: problem233
# author: zhwang
# date: 2022-03-12
# difficulty: Hard
# categories: Math
# link: <https://leetcode.com/problems/number-of-digit-one/description/>
# hidden: true
# ---
# 
# Given an integer n, count the total number of digit 1 appearing in all non-
# negative integers less than or equal to n.
# 
# **Example:**
# 
#     
#     
#     Input: 13
#     Output: 6 
#     Explanation: Digit 1 occurred in the following numbers: 1, 10, 11, 12, 13.
#     
# 
# 
## @lc code=start
using LeetCode

function count_digit_one(n::Int)::Int
    nums = reverse!([parse(Int, i) for i in string(n + 1)])
    res, ones = 0, count(==(1), nums)
    for (i, num) in enumerate(nums)
        num == 1 && (ones -= 1)
        res += 10^(i - 1) * (num * ones + (num > 1))
        res += i > 1 && (10^(i - 2) * (i - 1) * num)
    end
    return res
end

## example: reduce 21413 to 0
## num: step => reduced num
## 2141|4|-1: 4*2*1 + 4*0 + (4>1)*10 => 21410-1
## 214|1|0-1: 1*1*10 + 1*1*1 + (1>1)*10 => 21400-1
## 21|4|00-1: 4*1*100 + 4*2*10 + (4>1)*100 => 21000-1
## 2|1|000-1: 1*0*1000 + 1*3*100 + (1>1)*1000 => 20000-1
## |2|0000-1: 2*0*10000 + 2*4*10000 + (2>1)*10000 => 0

## @lc code=end
