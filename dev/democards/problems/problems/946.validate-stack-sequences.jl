# @lc code=start
using LeetCode
function validate_stack_sequences(pushed::Vector{Int}, popped::Vector{Int})
    return validate_stack_sequences!(copy(pushed), popped)
end
function validate_stack_sequences!(pushed::Vector{Int}, popped::Vector{Int})::Bool
    stack = Int[]
    for num in popped
        while isempty(stack) || last(stack) != num
            isempty(pushed) && return false
            push!(stack, popfirst!(pushed))
        end
        pop!(stack)
    end
    return true
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

