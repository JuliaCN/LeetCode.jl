# ---
# title: 905. Sort Array By Parity
# id: problem905
# author: Indigo
# date: 2022-10-19
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/sort-array-by-parity/description/>
# hidden: true
# ---
# 
# Given an array `A` of non-negative integers, return an array consisting of all
# the even elements of `A`, followed by all the odd elements of `A`.
# 
# You may return any answer array that satisfies this condition.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [3,1,2,4]
#     Output: [2,4,3,1]
#     The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 5000`
#   2. `0 <= A[i] <= 5000`
# 
# 
## @lc code=start
using LeetCode

function sort_array_by_parity!(arr::Vector{Int})
    i, j = 1, length(arr)
    while i < j
        if iseven(arr[i])
            i += 1
        else
            arr[i], arr[j] = arr[j], arr[i]
            j -= 1
        end
    end
    return arr
end
## @lc code=end
