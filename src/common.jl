#####
# ListNode
#####
import LinearAlgebra
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

function length_of_list(x::ListNode)::Int
    res = 0
    while !isnothing(x)
        x = x.next
        res += 1
    end
    res
end

length_of_list(::Nothing) = 0 

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
    root = _build_tree!(V, xs)
    return root
end

TreeNode{V}(xs::Vector) where {V} = convert(TreeNode{V}, xs)

function _build_tree!(::Type{T}, xs::Vector) where T
    res = TreeNode(xs[1])
    q1 = TreeNode{T}[res]
    q2 = TreeNode{T}[]
    idx, len = 2, length(xs)
    while idx <= len
        while !isempty(q1)
            qf = popfirst!(q1)
            idx > len && break
            if isnothing(xs[idx])
                qf.left = nothing
            else
                qf.left = TreeNode(xs[idx])
                push!(q2, qf.left)
            end
            (idx += 1) > len && break
            if isnothing(xs[idx])
                qf.right = nothing
            else
                qf.right = TreeNode(xs[idx])
                push!(q2, qf.right)
            end
            idx += 1
        end
        q1, q2 = q2, q1
    end
    return res
end

function next_perm!(itr)::Bool                      
    (isempty(itr) || length(itr) == 1) && return false
        
    i = findlast(idx -> itr[idx + 1] > itr[idx], 1:lastindex(itr) - 1)             
    isnothing(i) && (reverse!(itr); return false)
      
    j = findlast(idx -> itr[idx] > itr[i], i+1:lastindex(itr)) + i
    itr[i], itr[j] = itr[j], itr[i] 
    reverse!(itr, i + 1)
    return true
end

"""
``res = mat ^ p \\pmod m``
"""
function mat_fast_mul(mat::AbstractMatrix{T}, p::T, m::T=typemax(T)) where T
    p == 0 && return (ones(T, size(mat)))
    (m == 1 || m == -1) && return (zeros(T, size(mat)))
    base = mat .% m
    res = copy(base)
    tmp = typeof(mat)(undef, size(mat))
    t = prevpow(2, p)
    p -= t
    while true
        if p >= t
            LinearAlgebra.mul!(tmp, res, base)
            tmp, res = res, tmp
            res .%= m
            p -= t
        end
        t >>>= 1
        t <= 0 && break
        LinearAlgebra.mul!(tmp, res, res)
        tmp, res = res, tmp
        res .%= m    
    end
    res
end
