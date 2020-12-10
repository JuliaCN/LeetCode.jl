# ---
# title: 135. Candy
# id: problem135
# author: Qling
# date: 2020-12-09
# difficulty: Hard
# categories: Greedy
# link: <https://leetcode.com/problems/candy/description/>
# hidden: true
# ---
# 
# There are _N_ children standing in a line. Each child is assigned a rating
# value.
# 
# You are giving candies to these children subjected to the following
# requirements:
# 
#   * Each child must have at least one candy.
#   * Children with a higher rating get more candies than their neighbors.
# 
# What is the minimum candies you must give?
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,0,2]
#     Output: 5
#     Explanation: You can allocate to the first, second and third child with 2, 1, 2 candies respectively.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,2,2]
#     Output: 4
#     Explanation: You can allocate to the first, second and third child with 1, 2, 1 candies respectively.
#                  The third child gets 1 candy because it satisfies the above two conditions.
#     
# 
# 
## @lc code=start
using LeetCode

function candy(ratings::Vector{Int})::Int
    sizes = length(ratings)
    if sizes < 2
        return sizes 
    end

    nums = ones(Int, sizes)
    ## from left to right 
    for i in 2: sizes
        if ratings[i] > ratings[i - 1]
            nums[i] = nums[i - 1] + 1
        end
    end

    ## from right to left
    for i in sizes: -1: 2
        if ratings[i] < ratings[i - 1]
            nums[i - 1] = max(nums[i - 1], nums[i] + 1)
        end
    end

    return sum(nums)
end
## @lc code=end
