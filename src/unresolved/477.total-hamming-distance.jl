# ---
# title: 477. Total Hamming Distance
# id: problem477
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/total-hamming-distance/description/>
# hidden: true
# ---
# 
# The [Hamming distance](https://en.wikipedia.org/wiki/Hamming_distance) between
# two integers is the number of positions at which the corresponding bits are
# different.
# 
# Now your job is to find the total Hamming distance between all pairs of the
# given numbers.
# 
# **Example:**  
# 
#     
#     
#     Input: 4, 14, 2
#     
#     Output: 6
#     
#     Explanation: In binary representation, the 4 is 0100, 14 is 1110, and 2 is 0010 (just
#     showing the four bits relevant in this case). So the answer will be:
#     HammingDistance(4, 14) + HammingDistance(4, 2) + HammingDistance(14, 2) = 2 + 2 + 2 = 6.
#     
# 
# **Note:**  
# 
#   1. Elements of the given array are in the range of `0 ` to `10^9`
#   2. Length of the array will not exceed `10^4`. 
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
