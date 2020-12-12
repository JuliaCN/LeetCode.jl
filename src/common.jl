#####
# ListNode
#####

Base.@kwdef mutable struct ListNode{V}
    val::V = 0
    next::Union{Nothing,ListNode{V}} = nothing
end

ListNode(x) = ListNode(x, nothing)

function ListNode{V}(x::Vector{V}) where {V}
    head = cur = ListNode(x[1])
    for i in 2:length(x)
        cur.next = ListNode(x[i])
        cur = cur.next
    end
    return head
end

val(x::ListNode) = x.val
val!(x::ListNode, y) = x.val = y
next(x::ListNode) = x.next
next!(x::ListNode, y) = x.next = y

Base.:(==)(x::ListNode, y::ListNode) = x.val == y.val && x.next == y.next

#####
# TreeNode
#####

Base.@kwdef mutable struct TreeNode{V}
    val::V = 0
    left::Union{Nothing,TreeNode} = nothing
    right::Union{Nothing,TreeNode} = nothing
end

TreeNode(x) = TreeNode(; val=x)
TreeNode(x, left) = TreeNode(; val=x, left=left)

function Base.:(==)(t1::TreeNode, t2::TreeNode)
    return t1.val == t2.val && t1.left == t2.left && t1.right == t2.right
end

function Base.convert(::Type{TreeNode{V}}, xs::Vector) where {V}
    @assert length(xs) > 0
    root = TreeNode(xs[1])
    _build_tree!(root, xs, 1)
    return root
end

function _build_tree!(t::TreeNode, xs::Vector, i::Int=1)
    n = length(xs)
    i_left = i * 2
    if i_left <= n && !isnothing(xs[i_left])
        t.left = TreeNode(xs[i_left])
        _build_tree!(t.left, xs, i_left)
    else
        t.left = nothing
    end
    i_right = i * 2 + 1
    if i_right <= n && !isnothing(xs[i_right])
        t.right = TreeNode(xs[i_right])
        _build_tree!(t.right, xs, i_right)
    else
        t.right = nothing
    end
end
