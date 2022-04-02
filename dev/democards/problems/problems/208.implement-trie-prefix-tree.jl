# @lc code=start
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

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

