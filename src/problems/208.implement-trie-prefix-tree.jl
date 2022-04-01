# ---
# title: 208. Implement Trie (Prefix Tree)
# id: problem208
# author: zhwang
# date: 2022-03-17
# difficulty: Medium
# categories: Design, Trie
# link: <https://leetcode.com/problems/implement-trie-prefix-tree/description/>
# hidden: true
# ---
# 
# Implement a trie with `insert`, `search`, and `startsWith` methods.
# 
# **Example:**
# 
#     
#     
#     Trie trie = new Trie();
#     
#     trie.insert("apple");
#     trie.search("apple");   // returns true
#     trie.search("app");     // returns false
#     trie.startsWith("app"); // returns true
#     trie.insert("app");   
#     trie.search("app");     // returns true
#     
# 
# **Note:**
# 
#   * You may assume that all inputs are consist of lowercase letters `a-z`.
#   * All inputs are guaranteed to be non-empty strings.
# 
# 
## @lc code=start
using LeetCode

Base.@kwdef mutable struct PrefixNode
    isend::Bool = false
    children = Dict{Char,PrefixNode}()
end

function insert_node!(node::PrefixNode, word::String)::Nothing
    for c in word
        children = node.children
        haskey(children, c) || (children[c] = PrefixNode())
        node = children[c]
    end
    node.isend = true
    return nothing
end

function search_prefix_node(node::PrefixNode, prefix::String)::Union{Nothing,PrefixNode}
    for c in prefix
        children = node.children
        haskey(children, c) || return nothing
        node = children[c]
    end
    return node
end

function search_word(node::PrefixNode, word::String)::Bool
    node = search_prefix_node(node, word)
    return !isnothing(node) && node.isend
end

starts_with(node::PrefixNode, prefix::String) = !isnothing(search_prefix_node(node, prefix))

## @lc code=end
