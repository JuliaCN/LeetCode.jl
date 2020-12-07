# ---
# title: 661. Image Smoother
# id: problem661
# author: Tian Jun
# date: 2020-10-31
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
## add your code here:
## @lc code=end
