# @lc code=start
using LeetCode

struct MyHashMap
    buckets::Int
    table::Vector{Vector{T}} where {T}
    MyHashMap() = new(1009, [Tuple{Int,Int}[] for _ = 1:1009])
end

hash_706(hash_map::MyHashMap, key::Int) = mod1(key, hash_map.buckets)

function put_706!(hash_map::MyHashMap, key::Int, value::Int)
    hash_key = hash_706(hash_map, key)

    if !isempty(hash_map.table[hash_key])
        for (i, item) in enumerate(hash_map.table[hash_key])
            if item[1] == key
                hash_map.table[hash_key][i] = (key, value)
                return
            end
        end
    end

    push!(hash_map.table[hash_key], (key, value))
    return
end

function remove_706!(hash_map::MyHashMap, key)
    hash_key = hash_706(hash_map, key)

    if !isempty(hash_map.table[hash_key])
        for (i, item) in enumerate(hash_map.table[hash_key])
            if item[1] == key
                deleteat!(hash_map.table[hash_key], i)
                return
            end
        end
    end
end

function get_706(hash_map::MyHashMap, key)
    hash_key = hash_706(hash_map, key)

    for item in hash_map.table[hash_key]
        !isempty(item) && item[1] == key && return item[2]
    end

    return -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

