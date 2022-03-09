# @lc code=start
using LeetCode

struct MountainArray
    vec::Vector{Int}
end

Base.length(ma::MountainArray) = length(ma.vec)
Base.getindex(ma::MountainArray, i) = ma.vec[i]

function find_in_mountain_array(ma::MountainArray, target::Int)
    len = length(ma)
    i, j = 1, len
    while i != j
        mid = (i + j) >> 1
        ma[mid] > ma[mid + 1] ? (j = mid) : (i = mid + 1)
    end
    idx1 = searchsortedfirst(1:i, i; by=i -> ma[i] >= target)
    ma[idx1] == target && return idx1
    idx2 = searchsortedfirst((i + 1):len, i; by=i -> ma[i] <= target) + i
    ma[idx2] == target && return idx2
    return -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

