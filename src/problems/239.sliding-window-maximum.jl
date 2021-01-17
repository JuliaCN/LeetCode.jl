# ---
# title: 239. Sliding Window Maximum
# id: problem239
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Heap, Sliding Window, Dequeue
# link: <https://leetcode.com/problems/sliding-window-maximum/description/>
# hidden: true
# ---
# 
# You are given an array of integers `nums`, there is a sliding window of size
# `k` which is moving from the very left of the array to the very right. You can
# only see the `k` numbers in the window. Each time the sliding window moves
# right by one position.
# 
# Return _the max sliding window_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
#     Output: [3,3,5,5,6,7]
#     Explanation: 
#     Window position                Max
#     ---------------               -----
#     [1  3  -1] -3  5  3  6  7       **3**
#      1 [3  -1  -3] 5  3  6  7       **3**
#      1  3 [-1  -3  5] 3  6  7      **5**
#      1  3  -1 [-3  5  3] 6  7       **5**
#      1  3  -1  -3 [5  3  6] 7       **6**
#      1  3  -1  -3  5 [3  6  7]      **7**
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1], k = 1
#     Output: [1]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1,-1], k = 1
#     Output: [1,-1]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [9,11], k = 2
#     Output: [11]
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums = [4,-2], k = 2
#     Output: [4]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 105`
#   * `-104 <= nums[i] <= 104`
#   * `1 <= k <= nums.length`
# 
# 
## @lc code=start
using LeetCode
function max_sliding_window(nums::Vector{Int}, k::Int)::Vector{Int}
    q = Deque{Int}()
    len = length(nums)
    res = fill(0, len - k + 1)
    for i in 1:k-1
        num = nums[i]
        while !isempty(q) && nums[first(q)] < num
            popfirst!(q)
        end
        while !isempty(q) && nums[last(q)] < num
            pop!(q)
        end
        push!(q, i)
    end
    for i in k:len
        num = nums[i]
        while !isempty(q) && (nums[first(q)] < num || first(q) < i - k + 1)
            popfirst!(q)
        end
        while !isempty(q) && nums[last(q)] < num
            pop!(q)
        end
        push!(q, i)
        res[i - k + 1] = nums[first(q)]
    end
    res
end
## @lc code=end
