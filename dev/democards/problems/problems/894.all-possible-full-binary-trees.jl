# @lc code=start
using LeetCode

function all_possible_fbt(N::Int)
    cache_res = [TreeNode{Int}[] for i in 1:N]
    cache_res[1] = [TreeNode(0)]
    if N % 2 == 0
        return TreeNode{Int}[]
    end
    for n in 3:2:N
        for i in 1:2:n-1
            lres = cache_res[i]
            rres = cache_res[n-i-1]
            append!(cache_res[n], TreeNode(0, lr, rr) for lr in lres for rr in rres)
        end
    end
    return cache_res[N]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

