# @lc code=start
using LeetCode

function can_adj(u, v)
    sq = isqrt(u + v)
    return sq * sq == u + v
end

function num_squareful_perms(nums::Vector{Int})
    ctr = counter(nums)
    adj_set = Set{Tuple{Int, Int}}()
    for i1 in 1:length(nums), i2 in i1:length(nums)
        n1, n2 = nums[i1], nums[i2]
        if can_adj(n1, n2)
            push!(adj_set, (n1, n2))
            push!(adj_set, (n2, n1))
        end
    end
    function gen_perms(ctr, lst = nothing)
        sum(ctr) == 0 && return 1
        res = 0
        for k in keys(ctr)
            (ctr[k] == 0 || !isnothing(lst) && (lst, k) ∉ adj_set) && continue
            ctr[k] -= 1
            res += gen_perms(ctr, k)
            ctr[k] += 1
        end
        res
    end
    gen_perms(ctr)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

