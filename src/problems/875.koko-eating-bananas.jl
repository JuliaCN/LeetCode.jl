# ---
# title: 875. Koko Eating Bananas
# id: problem875
# author: Qling
# date: 2021-04-07
# difficulty: Medium
# categories: Binary Search
# link: <https://leetcode.com/problems/koko-eating-bananas/description/>
# hidden: true
# ---
# 
# Koko loves to eat bananas.  There are `N` piles of bananas, the `i`-th pile
# has `piles[i]` bananas.  The guards have gone and will come back in `H` hours.
# 
# Koko can decide her bananas-per-hour eating speed of `K`.  Each hour, she
# chooses some pile of bananas, and eats K bananas from that pile.  If the pile
# has less than `K` bananas, she eats all of them instead, and won't eat any
# more bananas during this hour.
# 
# Koko likes to eat slowly, but still wants to finish eating all the bananas
# before the guards come back.
# 
# Return the minimum integer `K` such that she can eat all the bananas within
# `H` hours.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: piles = [3,6,7,11], H = 8
#     Output: 4
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: piles = [30,11,23,4,20], H = 5
#     Output: 30
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: piles = [30,11,23,4,20], H = 6
#     Output: 23
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= piles.length <= 10^4`
#   * `piles.length <= H <= 10^9`
#   * `1 <= piles[i] <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function min_eating_speed(piles::Vector{Int}, h::Int)::Int
    function possible(mid)
        t = 0
        for pile in piles
            t += cld(pile, mid)
        end
        return t <= h
    end

    left, right = 1, maximum(piles)
    while left <= right
        mid = (left + right) >> 1
        if possible(mid)
            right = mid - 1
        else
            left = mid + 1
        end
    end

    return left
end
## @lc code=end
