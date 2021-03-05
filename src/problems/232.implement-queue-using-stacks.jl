# ---
# title: 232. Implement Queue using Stacks
# id: problem232
# author: Qling
# date: 2021-03-05
# difficulty: Easy
# categories: Stack, Design
# link: <https://leetcode.com/problems/implement-queue-using-stacks/description/>
# hidden: true
# ---
# 
# Implement a first in first out (FIFO) queue using only two stacks. The
# implemented queue should support all the functions of a normal queue (`push`,
# `peek`, `pop`, and `empty`).
# 
# Implement the `MyQueue` class:
# 
#   * `void push(int x)` Pushes element x to the back of the queue.
#   * `int pop()` Removes the element from the front of the queue and returns it.
#   * `int peek()` Returns the element at the front of the queue.
#   * `boolean empty()` Returns `true` if the queue is empty, `false` otherwise.
# 
# **Notes:**
# 
#   * You must use **only** standard operations of a stack, which means only `push to top`, `peek/pop from top`, `size`, and `is empty` operations are valid.
#   * Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.
# 
# **Follow-up:** Can you implement the queue such that each operation is
# **[amortized](https://en.wikipedia.org/wiki/Amortized_analysis)** `O(1)` time
# complexity? In other words, performing `n` operations will take overall `O(n)`
# time even if one of those operations may take longer.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["MyQueue", "push", "push", "peek", "pop", "empty"]
#     [[], [1], [2], [], [], []]
#     **Output**
#     [null, null, null, 1, 1, false]
#     
#     **Explanation**
#     MyQueue myQueue = new MyQueue();
#     myQueue.push(1); // queue is: [1]
#     myQueue.push(2); // queue is: [1, 2] (leftmost is front of the queue)
#     myQueue.peek(); // return 1
#     myQueue.pop(); // return 1, queue is [2]
#     myQueue.empty(); // return false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= x <= 9`
#   * At most `100` calls will be made to `push`, `pop`, `peek`, and `empty`.
#   * All the calls to `pop` and `peek` are valid.
# 
# 
## @lc code=start
using LeetCode
using DataStructures

struct MyQueue
    in_stack::Vector{Int}
    out_stack::Vector{Int}
    MyQueue() = new(Int[], Int[])
end


## Push element x to the back of queue.
myqueue_push!(queue::MyQueue, x::Int) = push!(queue.in_stack, x)

## Removes the element from in front of queue and returns that element.
function myqueue_pop!(queue::MyQueue)
    myqueue_move!(queue)

    return pop!(queue.out_stack)
end

## Get the front element.
function myqueue_peek(queue::MyQueue)
    myqueue_move!(queue)
    return queue.out_stack[end]
end

## Returns whether the queue is empty.
myqueue_isempty(queue::MyQueue) = isempty(queue.in_stack) && isempty(queue.out_stack)

function myqueue_move!(queue::MyQueue)
    if isempty(queue.out_stack)
        while !isempty(queue.in_stack)
            push!(queue.out_stack, pop!(queue.in_stack))
        end
    end
end
## @lc code=end
