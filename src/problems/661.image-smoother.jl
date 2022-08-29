# ---
# title: 661. Image Smoother
# id: problem661
# author: zhwang
# date: 2022-03-24
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/image-smoother/description/>
# hidden: true
# ---
# 
# Given a 2D integer matrix M representing the gray scale of an image, you need
# to design a smoother to make the gray scale of each cell becomes the average
# gray scale (rounding down) of all the 8 surrounding cells and itself. If a
# cell has less than 8 surrounding cells, then use as many as you can.
# 
# **Example 1:**  
# 
#     
#     
#     Input:
#     [[1,1,1],
#      [1,0,1],
#      [1,1,1]]
#     Output:
#     [[0, 0, 0],
#      [0, 0, 0],
#      [0, 0, 0]]
#     Explanation:
#     For the point (0,0), (0,2), (2,0), (2,2): floor(3/4) = floor(0.75) = 0
#     For the point (0,1), (1,0), (1,2), (2,1): floor(5/6) = floor(0.83333333) = 0
#     For the point (1,1): floor(8/9) = floor(0.88888889) = 0
#     
# 
# **Note:**  
# 
#   1. The value in the given matrix is in the range of [0, 255].
#   2. The length and width of the given matrix are in the range of [1, 150].
# 
# 
## @lc code=start
using LeetCode

function image_smoother(img::Matrix{Int})::Matrix{Int}
    presum, (m, n) = similar(img), size(img)
    presum[1, 1] = img[1, 1]
    for i in 2:m
        presum[i, 1] = presum[i - 1, 1] + img[i, 1]
    end
    for j in 2:n
        presum[1, j] = presum[1, j - 1] + img[1, j]
    end
    for i in 2:m, j in 2:n
        presum[i, j] =
            img[i, j] + presum[i - 1, j] + presum[i, j - 1] - presum[i - 1, j - 1]
    end
    ## obtain results from 2-dim presum
    res, indices = similar(img), CartesianIndices(img)
    for i in 1:m, j in 1:n
        x1 = i > 1 ? i - 2 : i - 1
        y1 = j > 1 ? j - 2 : j - 1
        x2 = i < m ? i + 1 : i
        y2 = j < n ? j + 1 : j
        idx1, idx2, idx3, idx4 = CartesianIndex.([(x1, y1), (x1, y2), (x2, y1), (x2, y2)])
        area =
            presum[idx4] - (idx2 ∈ indices && presum[idx2]) -
            (idx3 ∈ indices && presum[idx3]) + (idx1 ∈ indices && presum[idx1])
        res[i, j] = area ÷ prod((idx4 - idx1).I)
    end
    return res
end
## @lc code=end
