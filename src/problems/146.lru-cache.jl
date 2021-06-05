# ---
# title: 146. LRU Cache
# id: problem146
# author: Indigo
# date: 2021-06-03
# difficulty: Medium
# categories: Design
# link: <https://leetcode.com/problems/lru-cache/description/>
# hidden: true
# ---
# 
# Design a data structure that follows the constraints of a **[Least Recently
# Used (LRU)
# cache](https://en.wikipedia.org/wiki/Cache_replacement_policies#LRU)**.
# 
# Implement the `LRUCache` class:
# 
#   * `LRUCache(int capacity)` Initialize the LRU cache with **positive** size `capacity`.
#   * `int get(int key)` Return the value of the `key` if the key exists, otherwise return `-1`.
#   * `void put(int key, int value)` Update the value of the `key` if the `key` exists. Otherwise, add the `key-value` pair to the cache. If the number of keys exceeds the `capacity` from this operation, **evict** the least recently used key.
# 
# **Follow up:**  
# Could you do `get` and `put` in `O(1)` time complexity?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
#     [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
#     **Output**
#     [null, null, null, 1, null, -1, null, -1, 3, 4]
#     
#     **Explanation**
#     LRUCache lRUCache = new LRUCache(2);
#     lRUCache.put(1, 1); // cache is {1=1}
#     lRUCache.put(2, 2); // cache is {1=1, 2=2}
#     lRUCache.get(1);    // return 1
#     lRUCache.put(3, 3); // LRU key was 2, evicts key 2, cache is {1=1, 3=3}
#     lRUCache.get(2);    // returns -1 (not found)
#     lRUCache.put(4, 4); // LRU key was 1, evicts key 1, cache is {4=4, 3=3}
#     lRUCache.get(1);    // return -1 (not found)
#     lRUCache.get(3);    // return 3
#     lRUCache.get(4);    // return 4
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= capacity <= 3000`
#   * `0 <= key <= 3000`
#   * `0 <= value <= 104`
#   * At most `3 * 104` calls will be made to `get` and `put`.
# 
# 
## @lc code=start
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
        cache[key] = val
    else
        length(cache.data) == cache.cap && delete!(cache.data, first(cache.data|> keys))
        cache.data[key] = val
    end
end

## @lc code=end
