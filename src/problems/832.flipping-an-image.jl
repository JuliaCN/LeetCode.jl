# ---
# title: 832. Flipping an Image
# id: problem832
# author: Qling
# date: 2021-02-24
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/flipping-an-image/description/>
# hidden: true
# ---
# 
# Given a binary matrix `A`, we want to flip the image horizontally, then invert
# it, and return the resulting image.
# 
# To flip an image horizontally means that each row of the image is reversed.
# For example, flipping `[1, 1, 0]` horizontally results in `[0, 1, 1]`.
# 
# To invert an image means that each `0` is replaced by `1`, and each `1` is
# replaced by `0`. For example, inverting `[0, 1, 1]` results in `[1, 0, 0]`.
# 
# **Example 1:**
# 
#     
#     
#     Input: [[1,1,0],[1,0,1],[0,0,0]]
#     Output: [[1,0,0],[0,1,0],[1,1,1]]
#     Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
#     Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
#     Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
#     Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
#     Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
#     
# 
# **Notes:**
# 
#   * `1 <= A.length = A[0].length <= 20`
#   * `0 <= A[i][j] <= 1`
# 
# 
## @lc code=start
using LeetCode

function flip_and_invert_image(A::Vector{Vector{Int}})::Vector{Vector{Int}}
    m = length(A)
    for i = 1:m
        reverse!(A[i]) .⊻= 1
    end

    return A
end

## @lc code=end
