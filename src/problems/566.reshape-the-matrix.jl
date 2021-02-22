# ---
# title: 566. Reshape the Matrix
# id: problem566
# author: Qling
# date: 2021-02-17
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/reshape-the-matrix/description/>
# hidden: true
# ---
# 
# In MATLAB, there is a very useful function called 'reshape', which can reshape
# a matrix into a new one with different size but keep its original data.
# 
# You're given a matrix represented by a two-dimensional array, and two
# **positive** integers **r** and **c** representing the **row** number and
# **column** number of the wanted reshaped matrix, respectively.
# 
# The reshaped matrix need to be filled with all the elements of the original
# matrix in the same **row-traversing** order as they were.
# 
# If the 'reshape' operation with given parameters is possible and legal, output
# the new reshaped matrix; Otherwise, output the original matrix.
# 
# **Example 1:**  
# 
#     
#     
#     Input: 
#     nums = 
#     [[1,2],
#      [3,4]]
#     r = 1, c = 4
#     Output: 
#     [[1,2,3,4]]
#     Explanation:  
#      The **row-traversing** of nums is [1,2,3,4]. The new reshaped matrix is a 1 * 4 matrix, fill it row by row by using the previous list.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: 
#     nums = 
#     [[1,2],
#      [3,4]]
#     r = 2, c = 4
#     Output: 
#     [[1,2],
#      [3,4]]
#     Explanation:  
#      There is no way to reshape a 2 * 2 matrix to a 2 * 4 matrix. So output the original matrix.
#     
# 
# **Note:**  
# 
#   1. The height and width of the given matrix is in range [1, 100].
#   2. The given r and c are all positive.
# 
# 
## @lc code=start
using LeetCode

function matrixReshape(nums::Vector{Vector{Int}}, r::Int, c::Int)
    m, n = length(nums), length(nums[1])

    m * n != r * c && return nums

    ans = [[0 for _ in 1:c] for _ in 1:r]

    for x in 0:(m * n - 1)
        ans[x ÷ c + 1][(x % c) + 1] = nums[x ÷ n + 1][(x % n) + 1]
    end

    return ans
end

## @lc code=end
