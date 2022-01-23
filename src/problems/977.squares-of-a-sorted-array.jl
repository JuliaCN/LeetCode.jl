# ---
# title: 977. Squares of a Sorted Array
# id: problem977
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/squares-of-a-sorted-array/description/>
# hidden: true
# ---
# 
# Given an integer array `nums` sorted in **non-decreasing** order, return _an
# array of **the squares of each number**  sorted in non-decreasing order_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [-4,-1,0,3,10]
#     Output: [0,1,9,16,100]
#     Explanation: After squaring, the array becomes [16,1,0,9,100].
#     After sorting, it becomes [0,1,9,16,100].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [-7,-3,2,3,11]
#     Output: [4,9,9,49,121]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 104`
#   * `-104 <= nums[i] <= 104`
#   * `nums` is sorted in **non-decreasing** order.
# 
# 
## @lc code=start
using LeetCode

## binary search + merge sort
function squares_of_a_sorted_array(nums::Vector{Int})::Vector{Int}
    n = length(nums)
    ## binary search
    left, right = 1, n
    while left <= right
        mid = (right + left) >> 1
        if nums[mid] < 0
            left = mid + 1
        else
            right = mid - 1
        end
    end
    ## merge sort
    i, j, res = right, left, Int[]
    while i >= 1 && j <= n
        if nums[i]^2 < nums[j]^2
            push!(res, nums[i]^2)
            i -= 1
        else
            push!(res, nums[j]^2)
            j += 1
        end
    end
    if i == 0
        push!(res, (nums[k]^2 for k in j:n)...)
    else
        push!(res, (nums[k]^2 for k in i:-1:1)...)
    end
    return res
end

## @lc code=end
