# @lc code=start
using LeetCode

function kth_smallest_prime_fraction(arr::Vector{Int}, k::Int)
    hp = BinaryMinHeap(1 .// arr[2:end])
    next_prime = Dict((arr[i], arr[i+1]) for i in 1:length(arr)-1)
    while (k -= 1) > 0
        tp = pop!(hp)
        if next_prime[tp.num] < tp.den
            push!(hp, next_prime[tp.num] // tp.den)
        end
    end
    return first(hp)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

