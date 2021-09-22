# @lc code=start
using LeetCode

function find_maximized_capital(k::Int, w::Int, profits::Vector{Int}, capital::Vector{Int})
    arr = @view(collect(zip(capital, profits))[:])
    sort!(arr)
    hp = Int[]
    for _ in 1:k
        idx = searchsortedlast(arr, (w + 1, -1))
        for item in @view(arr[1:idx])
            heappush!(hp, -item[2])
        end
        arr = @view(arr[idx+1:end])
        w -= isempty(hp) ? 0 : hp[1]
    end
    w
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

