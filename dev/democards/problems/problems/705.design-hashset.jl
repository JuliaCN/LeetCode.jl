# @lc code=start
using LeetCode

struct MyHashSet
    buckets::Int
    table::Vector{Vector{T}} where {T}
    MyHashSet() = new(1009, [[] for _ = 1:1009])
end

hash_705(hash_set::MyHashSet, key::Int) = mod1(key, hash_set.buckets)

function add_705!(hash_set::MyHashSet, key)
    hash_key = hash_705(hash_set, key)

    key ∈ hash_set.table[hash_key] && return

    push!(hash_set.table[hash_key], key)
    return
end

function remove_705!(hash_set::MyHashSet, key::Int)
    hash_key = hash_705(hash_set, key)

    key ∉ hash_set.table[hash_key] && return

    deleteat!(hash_set.table[hash_key], hash_set.table[hash_key] .== key)
end

function contains_705(hash_set::MyHashSet, key::Int)
    hash_key = hash_705(hash_set, key)

    return key ∈ hash_set.table[hash_key]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

