# ---
# title: 307. Range Sum Query - Mutable
# id: problem307
# author: zhwang
# date: 2022-03-12
# difficulty: Medium
# categories: Binary Indexed Tree, Segment Tree
# link: <https://leetcode.com/problems/range-sum-query-mutable/description/>
# hidden: true
# ---
# 
# Given an integer array _nums_ , find the sum of the elements between indices
# _i_ and _j_ ( _i_ ≤ _j_ ), inclusive.
# 
# The _update(i, val)_ function modifies _nums_ by updating the element at index
# _i_ to _val_.
# 
# **Example:**
# 
#     
#     
#     Given nums = [1, 3, 5]
#     
#     sumRange(0, 2) -> 9
#     update(1, 2)
#     sumRange(0, 2) -> 8
#     
# 
# 
# 
# **Constraints:**
# 
#   * The array is only modifiable by the _update_ function.
#   * You may assume the number of calls to _update_ and _sumRange_ function is distributed evenly.
#   * `0 <= i <= j <= nums.length - 1`
# 
# 
## @lc code=start
using LeetCode

mutable struct SegmentTree{T<:Real}
    n::Int
    tree::Vector{T}

    function SegmentTree(nums::Vector{T}) where {T}
        n = length(nums)
        tree = append!(zeros(Int, n - 1), nums)
        for i in (n - 1):-1:1
            tree[i] = tree[i << 1] + tree[i << 1 | 1]
        end
        return new{T}(n, tree)
    end
end

function update!(ST::SegmentTree, ind::Int, val::Int)::Nothing
    tree = ST.tree
    ind += ST.n - 1
    delta = val - tree[ind]
    while ind > 0
        tree[ind] += delta
        ind >>= 1
    end
end

function sum_range(ST::SegmentTree, left::Int, right::Int)::Int
    left += ST.n - 1
    right += ST.n - 1
    res, tree = 0, ST.tree
    while left <= right
        if isodd(left) ## right child
            res += tree[left] ## record outside value
            left += 1
        end
        left >>= 1
        if iseven(right) ## left child
            res += tree[right] ## record outside value
            right -= 1
        end
        right >>= 1
    end
    return res
end
## @lc code=end
