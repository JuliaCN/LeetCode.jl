# @lc code=start
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

