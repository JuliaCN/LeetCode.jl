# ---
# title: 605. Can Place Flowers
# id: problem605
# author: zhwang
# date: 2022-08-09
# difficulty: Easy
# categories: Array, Greedy
# link: <https://leetcode.com/problems/can-place-flowers/description/>
# hidden: true
# ---
# 
# You have a long flowerbed in which some of the plots are planted, and some are
# not. However, flowers cannot be planted in **adjacent** plots.
# 
# Given an integer array `flowerbed` containing `0`'s and `1`'s, where `0` means
# empty and `1` means not empty, and an integer `n`, return _if_ `n` new flowers
# can be planted in the `flowerbed` without violating the no-adjacent-flowers
# rule.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: flowerbed = [1,0,0,0,1], n = 1
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: flowerbed = [1,0,0,0,1], n = 2
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= flowerbed.length <= 2 * 104`
#   * `flowerbed[i]` is `0` or `1`.
#   * There are no two adjacent flowers in `flowerbed`.
#   * `0 <= n <= flowerbed.length`
# 
# 
## @lc code=start
using LeetCode

function min_startvalue(nums::Vector{Int})
    total = mintotal = 0
    for num in nums
        total += num
        mintotal > total && (mintotal = total)
    end
    1 - min(0, mintotal)
end
## @lc code=end