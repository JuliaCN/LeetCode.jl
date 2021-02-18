# @lc code=start
using LeetCode, DataStructures

function min_k_bit_flips(A::Vector{Int}, K::Int)
    len, res = length(A), 0
    q = Queue{Int}()
    for i in 1:len
        (!isempty(q) && first(q) <= i - K) && dequeue!(q)

        if (length(q) & 1) == A[i]
            (i + K - 1 > len) && return -1
            enqueue!(q, i)
            res += 1
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

