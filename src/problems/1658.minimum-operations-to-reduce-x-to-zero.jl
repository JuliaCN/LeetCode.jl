# ---
# title: 1658. Minimum Operations to Reduce X to Zero
# id: problem1658
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Two Pointers, Binary Search, Greedy
# link: <https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/description/>
# hidden: true
# ---
# 
# You are given an integer array `nums` and an integer `x`. In one operation,
# you can either remove the leftmost or the rightmost element from the array
# `nums` and subtract its value from `x`. Note that this **modifies** the array
# for future operations.
# 
# Return _the **minimum number** of operations to reduce _`x` _to **exactly**_
# `0` _if it 's possible_ _, otherwise, return_`-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,1,4,2,3], x = 5
#     Output: 2
#     Explanation: The optimal solution is to remove the last two elements to reduce x to zero.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [5,6,7,8,9], x = 4
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [3,2,20,1,1,3], x = 10
#     Output: 5
#     Explanation: The optimal solution is to remove the last three elements and the first two elements (5 operations in total) to reduce x to zero.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 105`
#   * `1 <= nums[i] <= 104`
#   * `1 <= x <= 109`
# 
# 
## @lc code=start
using LeetCode

function min_operations(nums::Vector{Int}, x::Int)
    rnums = reverse(nums)
    if nums[1] > x && rnums[1] > x
        return -1
    end
    len = length(nums)
    rlm, llm, res = len, len, len
    for i in 1:(len - 1)
        if ((nums[i + 1] += nums[i]) > x)
            rlm = i
            break
        end
    end
    if rm == len
        if nums[end] < x
            return -1
        else
            return len
        end
    end
    for i in 1:(len - 1)
        if ((rnums[i + 1] += rnums[i]) > x)
            llm = i
            break
        end
    end
    i, j = 1, llm
    while i <= rlm && j > 0
        if nums[i] == x
            res = min(i, res)
            i += 1
        elseif rnums[j] == x
            res = min(j, res)
            j -= 1
        else
            sm = nums[i] + rnums[j]
            ## println(i," ", j," ", sm)
            if sm == x
                res = min(i + j, res)
                i += 1
                j -= 1
            elseif sm > x
                j -= 1
            else
                i += 1
            end
        end
    end
    return res
end
## @lc code=end
