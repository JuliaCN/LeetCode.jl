# @lc code=start
using LeetCode
using DataStructures

struct MyQueue
    in_stack::Vector{Int}
    out_stack::Vector{Int}
    MyQueue() = new(Int[], Int[])
end


# Push element x to the back of queue.
myqueue_push!(queue::MyQueue, x::Int) = push!(queue.in_stack, x)

# Removes the element from in front of queue and returns that element.
function myqueue_pop!(queue::MyQueue)
    myqueue_move!(queue)

    return pop!(queue.out_stack)
end

# Get the front element.
function myqueue_peek(queue::MyQueue)
    myqueue_move!(queue)
    return queue.out_stack[end]
end

# Returns whether the queue is empty.
myqueue_isempty(queue::MyQueue) = isempty(queue.in_stack) && isempty(queue.out_stack)

function myqueue_move!(queue::MyQueue)
    if isempty(queue.out_stack)
        while !isempty(queue.in_stack)
            push!(queue.out_stack, pop!(queue.in_stack))
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

