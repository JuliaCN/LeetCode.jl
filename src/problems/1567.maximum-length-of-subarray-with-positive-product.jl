# ---
# title: 1567. Maximum Length of Subarray With Positive Product
# id: problem1567
# author: zhwang
# date: 2022-01-23
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/maximum-length-of-subarray-with-positive-product/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums`, find the maximum length of a subarray where
# the product of all its elements is positive.
# 
# A subarray of an array is a consecutive sequence of zero or more values taken
# out of that array.
# 
# Return  _the maximum length of a subarray with positive product_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,-2,-3,4]
#     Output: 4
#     Explanation: The array nums already has a positive product of 24.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,1,-2,-3,-4]
#     Output: 3
#     Explanation: The longest subarray with positive product is [1,-2,-3] which has a product of 6.
#     Notice that we cannot include 0 in the subarray since that'll make the product 0 which is not positive.
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [-1,-2,-3,0,1]
#     Output: 2
#     Explanation: The longest subarray with positive product is [-1,-2] or [-2,-3].
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [-1,2]
#     Output: 1
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums = [1,2,3,5,-6,4,0,10]
#     Output: 4
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 10^5`
#   * `-10^9 <= nums[i] <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function get_max_len(nums::Vector{Int})::Int
    pos_pre = neg_pre = max_ans = 0
    for num in nums
        if num == 0
            pos_pre = neg_pre = 0
        elseif num > 0
            pos_pre = pos_pre + 1
            neg_pre = neg_pre != 0 ? neg_pre + 1 : 0
        else
            neg_tmp = neg_pre
            neg_pre = pos_pre != 0 ? pos_pre + 1 : 1
            pos_pre = neg_tmp != 0 ? neg_tmp + 1 : 0
        end
        max_ans = max(max_ans, pos_pre)
    end
    return max_ans
end

## @lc code=end
