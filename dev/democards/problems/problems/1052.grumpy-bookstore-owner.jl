# @lc code=start
using LeetCode


function max_satisfied(customers::Vector{Int}, grumpy::Vector{Int}, x::Int)
    n = length(customers)
    satisfied = sum(customers[1:x])

    for i = (x+1):n
        (grumpy[i] == 0) && (satisfied += customers[i])
    end

    current_satisfied = satisfied
    left, right = 1, x + 1
    while right <= n
        (grumpy[left] == 1) && (current_satisfied -= customers[left])
        (grumpy[right] == 1) && (current_satisfied += customers[right])

        satisfied = max(current_satisfied, satisfied)
        left, right = left + 1, right + 1
    end

    satisfied
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

