# ---
# title: 725. Split Linked List in Parts
# id: problem725
# author: Indigo
# date: 2021-09-22
# difficulty: Medium
# categories: Linked List
# link: <https://leetcode.com/problems/split-linked-list-in-parts/description/>
# hidden: true
# ---
# 
# Given a (singly) linked list with head node `root`, write a function to split
# the linked list into `k` consecutive linked list "parts".
# 
# The length of each part should be as equal as possible: no two parts should
# have a size differing by more than 1. This may lead to some parts being null.
# 
# The parts should be in order of occurrence in the input list, and parts
# occurring earlier should always have a size greater than or equal parts
# occurring later.
# 
# Return a List of ListNode's representing the linked list parts that are
# formed.
# 
# Examples 1->2->3->4, k = 5 // 5 equal parts [ [1], [2], [3], [4], null ]
# 
# **Example 1:**  
# 
#     
#     
#     Input: 
#     root = [1, 2, 3], k = 5
#     Output: [[1],[2],[3],[],[]]
#     Explanation:
#     The input and each element of the output are ListNodes, not arrays.
#     For example, the input root has root.val = 1, root.next.val = 2, \root.next.next.val = 3, and root.next.next.next = null.
#     The first element output[0] has output[0].val = 1, output[0].next = null.
#     The last element output[4] is null, but it's string representation as a ListNode is [].
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: 
#     root = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k = 3
#     Output: [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]
#     Explanation:
#     The input has been split into consecutive parts with size difference at most 1, and earlier parts are a larger size than the later parts.
#     
# 
# **Note:**
# 
# * The length of `root` will be in the range `[0, 1000]`.
# * Each value of a node in the input will be an integer in the range `[0, 999]`.
# * `k` will be an integer in the range `[1, 50]`.
# 
# 
## @lc code=start
using LeetCode

split_list_to_parts(::Nothing, k::Int)::Vector{Union{ListNode{Int},Nothing}} =
    fill(nothing, k)

function split_list_to_parts(
    head::ListNode{Int}, k::Int
)::Vector{Union{ListNode{Int},Nothing}}
    p = head
    len = length_of_list(head)
    first_m = mod(len, k)
    base_n = len ÷ k
    res = Vector{Union{ListNode{Int},Nothing}}(undef, k)
    for i in 1:k
        for _ in 1:(base_n - (i > first_m))
            p = p.next
        end
        res[i] = head
        if !isnothing(p)
            head = p.next
            p.next = nothing
        end
        p = head
    end
    return res
end
## @lc code=end
