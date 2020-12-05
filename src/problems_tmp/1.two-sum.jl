function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()

    for (i, n) in enumerate(nums)
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end
