# ---
# title: 442. Find All Duplicates in an Array
# id: problem442
# author: Indigo
# date: 2021-06-21
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/find-all-duplicates-in-an-array/description/>
# hidden: true
# ---
# 
# Given an array of integers, 1 ≤ a[i] ≤ _n_ ( _n_ = size of array), some
# elements appear **twice** and others appear **once**.
# 
# Find all the elements that appear **twice** in this array.
# 
# Could you do it without extra space and in O( _n_ ) runtime?
# 
# **Example:**  
# 
#     
#     
#     Input:
#     [4,3,2,7,8,2,3,1]
#     
#     Output:
#     [2,3]
#     
# 
# 
## @lc code=start
using LeetCode

function find_duplicates_442(nums::Vector{Int})
    res = Int[]
    for num in nums
        absn = abs(num)
        nums[absn] < 0 ? push!(res, absn) : (nums[absn] = -nums[absn])
    end
    return res
end
## @lc code=end
