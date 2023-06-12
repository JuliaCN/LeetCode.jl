# ---
# title: 1054. Distant Barcodes
# id: problem1054
# author: Indigo
# date: 2022-10-06
# difficulty: Medium
# categories: Heap, Sort
# link: <https://leetcode.com/problems/distant-barcodes/description/>
# hidden: true
# ---
# 
# In a warehouse, there is a row of barcodes, where the `ith` barcode is
# `barcodes[i]`.
# 
# Rearrange the barcodes so that no two adjacent barcodes are equal. You may
# return any answer, and it is guaranteed an answer exists.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: barcodes = [1,1,1,2,2,2]
#     Output: [2,1,2,1,2,1]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: barcodes = [1,1,1,1,2,2,3,3]
#     Output: [1,3,1,3,1,2,1,2]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= barcodes.length <= 10000`
#   * `1 <= barcodes[i] <= 10000`
# 
# 
## @lc code=start
using LeetCode

function rearrange_barcodes(barcodes::Vector{Int})
    len = length(barcodes)
    res = zeros(Int, len)
    cnt = counter(barcodes)
    hp = heapify!([(v, k) for (k, v) in cnt])
    idx = 1
    while !isempty(hp)
        v, k = heappop!(hp)
        for _ in 1:v
            res[idx] = k
            idx += 2
            idx > len && (idx = 2)
        end
    end
    return res
end
## @lc code=end
