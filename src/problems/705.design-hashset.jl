# ---
# title: 705. Design HashSet
# id: problem705
# author: Qling
# date: 2021-03-14
# difficulty: Easy
# categories: Hash Table, Design
# link: <https://leetcode.com/problems/design-hashset/description/>
# hidden: true
# ---
# 
# Design a HashSet without using any built-in hash table libraries.
# 
# To be specific, your design should include these functions:
# 
#   * `add(value)`: Insert a value into the HashSet. 
#   * `contains(value)` : Return whether the value exists in the HashSet or not.
#   * `remove(value)`: Remove a value in the HashSet. If the value does not exist in the HashSet, do nothing.
# 
#   
# **Example:**
# 
#     
#     
#     MyHashSet hashSet = new MyHashSet();
#     hashSet.add(1);         
#     hashSet.add(2);         
#     hashSet.contains(1);    // returns true
#     hashSet.contains(3);    // returns false (not found)
#     hashSet.add(2);          
#     hashSet.contains(2);    // returns true
#     hashSet.remove(2);          
#     hashSet.contains(2);    // returns false (already removed)
#     
# 
#   
# **Note:**
# 
#   * All values will be in the range of `[0, 1000000]`.
#   * The number of operations will be in the range of `[1, 10000]`.
#   * Please do not use the built-in HashSet library.
# 
# 
## @lc code=start
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
## @lc code=end
