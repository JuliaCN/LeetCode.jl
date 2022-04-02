# @lc code=start
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

