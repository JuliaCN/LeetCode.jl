# ---
# title: 42. Trapping Rain Water
# id: problem42
# author: Indigo
# date: 2021-03-10
# difficulty: Hard
# categories: Array, Two Pointers, Stack
# link: <https://leetcode.com/problems/trapping-rain-water/description/>
# hidden: true
# ---
# 
# Given `n` non-negative integers representing an elevation map where the width
# of each bar is `1`, compute how much water it can trap after raining.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png)
# 
#     
#     
#     Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
#     Output: 6
#     Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: height = [4,2,0,3,2,5]
#     Output: 9
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n == height.length`
#   * `0 <= n <= 3 * 104`
#   * `0 <= height[i] <= 105`
# 
# 
## @lc code=start
using LeetCode

function trap_rain(height::Vector{Int})::Int
    csum = cumsum(height)
    pushfirst!(csum, 0)
    max_pos = argmax(height)
    len = length(height)
    res = 0
    r = 1
    for i in 2:max_pos
        if height[i] >= height[r]
            res += (i > r + 1) * (height[r] * (i - r) - (csum[i] - csum[r]))
            r = i
        end
    end
    l = len
    for j in (len - 1):-1:max_pos
        if height[j] >= height[l]
            res += (j < l - 1) * (height[l] * (l - j) - (csum[l + 1] - csum[j + 1]))
            l = j
        end
    end
    return res
end
## @lc code=end
