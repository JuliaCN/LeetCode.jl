# ---
# title: 946. Validate Stack Sequences
# id: problem946
# author: zhwang
# date: 2022-03-11
# difficulty: Medium
# categories: Stack
# link: <https://leetcode.com/problems/validate-stack-sequences/description/>
# hidden: true
# ---
# 
# Given two sequences `pushed` and `popped`  **with distinct values** , return
# `true` if and only if this could have been the result of a sequence of push
# and pop operations on an initially empty stack.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: pushed = [1,2,3,4,5], popped = [4,5,3,2,1]
#     Output: true
#     Explanation: We might do the following sequence:
#     push(1), push(2), push(3), push(4), pop() -> 4,
#     push(5), pop() -> 5, pop() -> 3, pop() -> 2, pop() -> 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: pushed = [1,2,3,4,5], popped = [4,3,5,1,2]
#     Output: false
#     Explanation: 1 cannot be popped before 2.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= pushed.length == popped.length <= 1000`
#   * `0 <= pushed[i], popped[i] < 1000`
#   * `pushed` is a permutation of `popped`.
#   * `pushed` and `popped` have distinct values.
# 
# 
## @lc code=start
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

## @lc code=end
