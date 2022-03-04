# @lc code=start
using LeetCode

function nearest_palindromic(num::String)::String
    function remove!(data::Vector{T}, target::T) where {T}
        return deleteat!(data, findall(==(target), data))
    end
    target_num, n = parse(Int, num), length(num)
    half_num = parse(Int, num[1:cld(n, 2)])
    nums = [half_num + i for i in -1:1] ## integers
    nums = [s * reverse(s[1:(n ÷ 2)]) for s in string.(nums)] ## strings
    nums = [parse(Int, i) for i in nums] ## integers
    if n > 1 ## special cases
        push!(nums, foldl((i, j) -> 10 * i + j, fill(9, n - 1))) ## 99...9
        push!(nums, foldl((i, j) -> 10 * i + j, (1, fill(0, n - 1)..., 1))) ## 10...01
    end
    sort!(remove!(nums, target_num))
    return string(nums[argmin([abs(i - target_num) for i in nums])])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

