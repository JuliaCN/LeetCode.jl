# ---
# title: 373. Find K Pairs with Smallest Sums
# id: problem373
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Heap
# link: <https://leetcode.com/problems/find-k-pairs-with-smallest-sums/description/>
# hidden: true
# ---
# 
# You are given two integer arrays **nums1** and **nums2** sorted in ascending
# order and an integer **k**.
# 
# Define a pair **(u,v)** which consists of one element from the first array and
# one element from the second array.
# 
# Find the k pairs **(u 1,v1),(u2,v2) ...(uk,vk)** with the smallest sums.
# 
# **Example 1:**
# 
#     
#     
#     Input: nums1 = [1,7,11], nums2 = [2,4,6], k = 3
#     Output: [[1,2],[1,4],[1,6]] 
#     Explanation: The first 3 pairs are returned from the sequence: 
#                  [1,2],[1,4],[1,6],[7,2],[7,4],[11,2],[7,6],[11,4],[11,6]
# 
# **Example 2:**
# 
#     
#     
#     Input: nums1 = [1,1,2], nums2 = [1,2,3], k = 2
#     Output: [1,1],[1,1]
#     Explanation: The first 2 pairs are returned from the sequence: 
#                  [1,1],[1,1],[1,2],[2,1],[1,2],[2,2],[1,3],[1,3],[2,3]
# 
# **Example 3:**
# 
#     
#     
#     Input: nums1 = [1,2], nums2 = [3], k = 3
#     Output: [1,3],[2,3]
#     Explanation: All possible pairs are returned from the sequence: [1,3],[2,3]
#     
# 
# 
## @lc code=start
using LeetCode
using DataStructures
function k_smallest_pairs(nums1::Vector{Int}, nums2::Vector{Int}, k::Int)
    hp = Tuple{Int, Int}[]
    odr = Base.Order.By(x -> -x[1] - x[2])
    for n1 in nums1, n2 in nums2
        heappush!(hp, (n1, n2), odr)
        length(hp) > k && heappop!(hp, odr)
    end
    sort!(hp; by = x -> x[1] + x[2])
end
## @lc code=end
