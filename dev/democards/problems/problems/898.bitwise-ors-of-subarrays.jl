# @lc code=start
using LeetCode

function subarray_bitwise_ors(A::Vector{Int})
    res = Set{Int}()
    cur = Set{Int}()
    for num in A
        cur2 = Set{Int}()
        for n in cur
            push!(cur2, n | num)
        end
        push!(cur2, num)
        cur = cur2
        union!(res, cur)
    end
    return length(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

