# ---
# title: 706. Design HashMap
# id: problem706
# author: Qling
# date: 2021-03-14
# difficulty: Easy
# categories: Hash Table, Design
# link: <https://leetcode.com/problems/design-hashmap/description/>
# hidden: true
# ---
# 
# Design a HashMap without using any built-in hash table libraries.
# 
# To be specific, your design should include these functions:
# 
#   * `put(key, value)` : Insert a (key, value) pair into the HashMap. If the value already exists in the HashMap, update the value.
#   * `get(key)`: Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key.
#   * `remove(key)` : Remove the mapping for the value key if this map contains the mapping for the key.
# 
#   
# **Example:**
# 
#     
#     
#     MyHashMap hashMap = new MyHashMap();
#     hashMap.put(1, 1);          
#     hashMap.put(2, 2);         
#     hashMap.get(1);            // returns 1
#     hashMap.get(3);            // returns -1 (not found)
#     hashMap.put(2, 1);          // update the existing value
#     hashMap.get(2);            // returns 1 
#     hashMap.remove(2);          // remove the mapping for 2
#     hashMap.get(2);            // returns -1 (not found) 
#     
# 
#   
# **Note:**
# 
#   * All keys and values will be in the range of `[0, 1000000]`.
#   * The number of operations will be in the range of `[1, 10000]`.
#   * Please do not use the built-in HashMap library.
# 
# 
## @lc code=start
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
## @lc code=end
