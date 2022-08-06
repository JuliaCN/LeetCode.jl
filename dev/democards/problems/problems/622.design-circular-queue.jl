# @lc code=start
using LeetCode

mutable struct MyCircularQueue
    len::Int
    front::Int
    rear::Int
    arr::Vector{Int} ## use one extra position
    MyCircularQueue(k::Int)  = new(k + 1, 1, 1, Vector{Int}(undef, k + 1))
end

is_full(que::MyCircularQueue) = (que.rear + 1 - que.front) % que.len == 0

function en_queue(que::MyCircularQueue, val::Int)
    is_full(que) && return false
    que.arr[que.rear] = val
    que.rear = que.rear % que.len + 1
    return true
end

is_empty(que::MyCircularQueue) = que.front == que.rear

function de_queue(que::MyCircularQueue)
    is_empty(que) && return false
    que.front = que.front % que.len + 1
    return true
end

front(que::MyCircularQueue) = is_empty(que) ? -1 : que.arr[que.front]
function rear(que::MyCircularQueue)
    is_empty(que) && return -1
    return que.arr[mod(que.rear - 2, que.len) + 1] ## use mod instead of % to avoid negative number
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

