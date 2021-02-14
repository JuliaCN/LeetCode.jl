# ---
# title: 765. Couples Holding Hands
# id: problem765
# author: Indigo
# date: 2021-02-14
# difficulty: Hard
# categories: Greedy, Union Find, Graph
# link: <https://leetcode.com/problems/couples-holding-hands/description/>
# hidden: true
# ---
# 
# N couples sit in 2N seats arranged in a row and want to hold hands. We want to
# know the minimum number of swaps so that every couple is sitting side by side.
# A _swap_ consists of choosing **any** two people, then they stand up and
# switch seats.
# 
# The people and seats are represented by an integer from `0` to `2N-1`, the
# couples are numbered in order, the first couple being `(0, 1)`, the second
# couple being `(2, 3)`, and so on with the last couple being `(2N-2, 2N-1)`.
# 
# The couples' initial seating is given by `row[i]` being the value of the
# person who is initially sitting in the i-th seat.
# 
# **Example 1:**  
# 
#     
#     
#     Input: row = [0, 2, 1, 3]
#     Output: 1
#     Explanation: We only need to swap the second (row[1]) and third (row[2]) person.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: row = [3, 2, 0, 1]
#     Output: 0
#     Explanation: All couples are already seated side by side.
#     
# 
# **Note:**
# 
#   1. `len(row)` is even and in the range of `[4, 60]`.
#   2. `row` is guaranteed to be a permutation of `0...len(row)-1`.
# 
# 
## @lc code=start
using LeetCode

function min_swaps_couples(row::Vector{Int})
    len, ps, res = length(row), length(row) ÷ 2, 0
    grp = [Set{Int}() for i in 1:ps]
    for i in 1:2:len
        l, r = row[i] ÷ 2 + 1, row[i + 1] ÷ 2 + 1
        (l != r) && (push!(grp[l], r); push!(grp[r], l))
    end
    visited = fill(false, ps)
    q = Queue{Int}()
    for i in 1:ps
        visited[i] && continue
        enqueue!(q, i)
        visited[i] = true
        cnt = 0
        while !isempty(q)
            frt = dequeue!(q)
            cnt += 1
            for neighbor in grp[frt]
                visited[neighbor] && continue
                enqueue!(q, neighbor)
                visited[neighbor] = true
            end
        end
        res += cnt - 1
    end
    res
end
## @lc code=end
