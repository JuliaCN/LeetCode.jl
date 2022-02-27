# ---
# title: 155. Min Stack
# id: problem155
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: Stack, Design
# link: <https://leetcode.com/problems/min-stack/description/>
# hidden: true
# ---
# 
# Design a stack that supports push, pop, top, and retrieving the minimum
# element in constant time.
# 
#   * push(x) -- Push element x onto stack.
#   * pop() -- Removes the element on top of the stack.
#   * top() -- Get the top element.
#   * getMin() -- Retrieve the minimum element in the stack.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["MinStack","push","push","push","getMin","pop","top","getMin"]
#     [[],[-2],[0],[-3],[],[],[],[]]
#     
#     **Output**
#     [null,null,null,null,-3,null,0,-2]
#     
#     **Explanation**
#     MinStack minStack = new MinStack();
#     minStack.push(-2);
#     minStack.push(0);
#     minStack.push(-3);
#     minStack.getMin(); // return -3
#     minStack.pop();
#     minStack.top();    // return 0
#     minStack.getMin(); // return -2
#     
# 
# 
# 
# **Constraints:**
# 
#   * Methods `pop`, `top` and `getMin` operations will always be called on **non-empty** stacks.
# 
# 
## @lc code=start
using LeetCode
Base.@kwdef struct MinStack{V<:Number}
    nums::Vector{V} = Int[]
    min_nums::Vector{V} = Int[]
end

function Base.push!(stack::MinStack, val::Int)::Nothing
    Base.push!(stack.nums, val)
    if isempty(stack.min_nums) || val <= stack.min_nums[end]
        Base.push!(stack.min_nums, val)
    end
    return nothing
end

function Base.pop!(stack::MinStack)::Nothing
    if Base.pop!(stack.nums) == stack.min_nums[end]
        Base.pop!(stack.min_nums)
    end
    return nothing
end

top(stack::MinStack)::Int = stack.nums[end]

get_min(stack::MinStack)::Int = stack.min_nums[end]
## @lc code=end
