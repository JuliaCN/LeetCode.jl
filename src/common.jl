#####
# ListNode
#####

Base.@kwdef mutable struct ListNode{V}
    val::V=0
    next::Union{Nothing,ListNode{V}}=nothing
end

ListNode(x) = ListNode(x, nothing)

function ListNode{V}(x::Vector{V}) where V
    head = cur = ListNode(x[1])
    for i in 2:length(x)
        cur.next = ListNode(x[i])
        cur = cur.next
    end
    head
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
    val::V=0
    left::Union{Nothing, TreeNode}=nothing
    right::Union{Nothing, TreeNode}=nothing
end

TreeNode(x) = TreeNode(;val=x)
TreeNode(x,left) = TreeNode(;val=x, left=left)