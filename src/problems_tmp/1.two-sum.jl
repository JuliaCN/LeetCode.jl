# 我们可以在这里写一些解题思路
#
# 这些都会被当成是markdown处理


## 而连续两个#会被当作注释处理
function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()
    for (i, n) in enumerate(nums)
        ## 这是一条注释
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end
