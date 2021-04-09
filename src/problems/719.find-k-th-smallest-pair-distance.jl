# ---
# title: 719. Find K-th Smallest Pair Distance
# id: problem719
# author: Qling
# date: 2021-04-07
# difficulty: Hard
# categories: Array, Binary Search, Heap
# link: <https://leetcode.com/problems/find-k-th-smallest-pair-distance/description/>
# hidden: true
# ---
# 
# Given an integer array, return the k-th smallest **distance** among all the
# pairs. The distance of a pair (A, B) is defined as the absolute difference
# between A and B.
# 
# **Example 1:**  
# 
#     
#     
#     Input:
#     nums = [1,3,1]
#     k = 1
#     **Output: 0** 
#     Explanation:
#     Here are all the pairs:
#     (1,3) -> 2
#     (1,1) -> 0
#     (3,1) -> 2
#     Then the 1st smallest distance pair is (1,1), and its distance is 0.
#     
# 
# **Note:**  
# 
#   1. `2 <= len(nums) <= 10000`.
#   2. `0 <= nums[i] < 1000000`.
#   3. `1 <= k <= len(nums) * (len(nums) - 1) / 2`.
# 
# 
## @lc code=start
using LeetCode

function smallest_distance_pair(nums::Vector{Int}, k::Int)::Int
    sort!(nums)
    n = length(nums)
    function count_not_greater(diff)
        i, ans = 1, 0
        for j in 2: n
            while nums[j] - nums[i] > diff
                i += 1
            ans += j - i
            end
        end

        return ans
    end

    left, right = 0, nums[end] - nums[1]
    while left <= right
        mid = (left + right) >> 1
        if count_not_greater(mid) >= k
            right = mid - 1
        else
            left = mid + 1
        end
    end

    return left
end
## @lc code=end
