# @lc code=start
using LeetCode

mutable struct OrderStream
    data::AbstractVector{T} where {T<:AbstractString}
    n::Int
    ptr::Int
    # initialize
    OrderStream(n::Int) = new(fill("", n), n, 1)
end

function insertdata!(stream::OrderStream, idkey::Int, val::String)
    stream.data[idkey] = val
    res = String[]
    isempty(stream.data[stream.ptr]) && return res
    for i in (stream.ptr):(stream.n)
        if isempty(stream.data[i])
            stream.ptr = i
            return res
        else
            push!(res, stream.data[i])
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

