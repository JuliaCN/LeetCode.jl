# @lc code=start
using LeetCode

struct LRUCache
    cap::Int
    data::OrderedDict{Int, Int}
    LRUCache(cap::Int) = new(cap, OrderedDict{Int, Int}())
end

function Base.getindex(cache::LRUCache, key)
    key ∉ keys(cache.data) && return -1
    res = cache.data[key]
    delete!(cache.data, key)
    cache.data[key] = res
    return res
end

function Base.setindex!(cache::LRUCache, val, key)
    if key in keys(cache.data)
        delete!(cache.data, key)
        cache.data[key] = val
    else
        length(cache.data) == cache.cap && delete!(cache.data, first(cache.data|> keys))
        cache.data[key] = val
    end
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

