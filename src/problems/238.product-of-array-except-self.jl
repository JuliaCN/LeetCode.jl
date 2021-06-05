# ---
# title: 238. Product of Array Except Self
# id: problem238
# author: Indigo
# date: 2021-06-03
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/product-of-array-except-self/description/>
# hidden: true
# ---
# 
# Given an array `nums` of _n_ integers where _n_ > 1,  return an array `output`
# such that `output[i]` is equal to the product of all the elements of `nums`
# except `nums[i]`.
# 
# **Example:**
# 
#     
#     
#     Input:  [1,2,3,4]
#     Output: [24,12,8,6]
#     
# 
# **Constraint:**  It's guaranteed that the product of the elements of any
# prefix or suffix of the array (including the whole array) fits in a 32 bit
# integer.
# 
# **Note:** Please solve it **without division** and in O( _n_ ).
# 
# **Follow up:**  
# Could you solve it with constant space complexity? (The output array **does
# not** count as extra space for the purpose of space complexity analysis.)
# 
# 
## @lc code=start
using LeetCode

function product_except_self(nums::Vector{Int})
    cnt_zeros = count(==(0), nums)
    cnt_zeros > 1 && return fill(0, size(nums))
    mult = 1
    for num in nums
        num != 0 && (mult *= num)
    end
    res = fill(0, length(nums))
    (cnt_zeros == 1) ? (res[findfirst(==(0), nums)] = mult) : (res .= mult .÷ nums)
    return res
end
## @lc code=end
