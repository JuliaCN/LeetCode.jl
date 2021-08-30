# ---
# title: 1588. Sum of All Odd Length Subarrays
# id: problem1588
# author: Indigo
# date: 2021-08-30
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/sum-of-all-odd-length-subarrays/description/>
# hidden: true
# ---
# 
# Given an array of positive integers `arr`, calculate the sum of all possible
# odd-length subarrays.
# 
# A subarray is a contiguous subsequence of the array.
# 
# Return  _the sum of all odd-length subarrays of  _`arr`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [1,4,2,5,3]
#     Output: 58
#     Explanation: The odd-length subarrays of arr and their sums are:
#     [1] = 1
#     [4] = 4
#     [2] = 2
#     [5] = 5
#     [3] = 3
#     [1,4,2] = 7
#     [4,2,5] = 11
#     [2,5,3] = 10
#     [1,4,2,5,3] = 15
#     If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [1,2]
#     Output: 3
#     Explanation: There are only 2 subarrays of odd length, [1] and [2]. Their sum is 3.
# 
# **Example 3:**
# 
#     
#     
#     Input: arr = [10,11,12]
#     Output: 66
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 100`
#   * `1 <= arr[i] <= 1000`
# 
# 
## @lc code=start
using LeetCode

function sum_odd_length_subarrays(arr::Vector{Int})::Int
    res = 0
    len = length(arr)
    for i in 1:len
        l, r = i - 1, len - i
        lodd, rodd = (l + 1) ÷ 2, (r + 1) ÷ 2
        leven, reven = l ÷ 2 + 1, r ÷ 2 + 1
        res += arr[i] * (lodd * rodd + leven * reven) 
    end
    res
end
## @lc code=end
