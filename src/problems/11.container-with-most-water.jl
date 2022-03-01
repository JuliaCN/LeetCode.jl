# ---
# title: 11. Container With Most Water
# id: problem11
# author: zhwang
# date: 2022-02-17
# difficulty: Medium
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/container-with-most-water/description/>
# hidden: true
# ---
# 
# Given `n` non-negative integers `a1, a2, ..., an` , where each represents a
# point at coordinate `(i, ai)`. `n` vertical lines are drawn such that the two
# endpoints of the line `i` is at `(i, ai)` and `(i, 0)`. Find two lines, which,
# together with the x-axis forms a container, such that the container contains
# the most water.
# 
# **Notice**  that you may not slant the container.
# 
# 
# 
# **Example 1:**
# 
# ![](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/07/17/question_11.jpg)
# 
#     
#     
#     Input: height = [1,8,6,2,5,4,8,3,7]
#     Output: 49
#     Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: height = [1,1]
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: height = [4,3,2,1,4]
#     Output: 16
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: height = [1,2,1]
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n = height.length`
#   * `2 <= n <= 3 * 104`
#   * `0 <= height[i] <= 3 * 104`
# 
# 
## @lc code=start
using LeetCode

function max_area_of_container(height::Vector{Int})::Int
    i, j, res = 1, length(height), 0
    while i < j
        res = max(res, min(height[i], height[j]) * (j - i))
        height[i] < height[j] ? (i += 1) : (j -= 1)
    end
    return res
end
## @lc code=end
