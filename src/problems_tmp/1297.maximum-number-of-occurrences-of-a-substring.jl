function max_freq(s::String, max_letters::Int, min_size::Int, max_size::Int)::Int
    counts = Dict{SubString,Int}()
    if max_size < min_size
        0
    else
        for i in 1:(length(s) - min_size + 1)
            for j in (i + min_size - 1):min(length(s), i + max_size + 1)
                ŝ = SubString(s, i, j)
                if length(Set(ŝ)) <= max_letters
                    counts[ŝ] = get(counts, ŝ, 0) + 1
                end
            end
        end
    end
    return length(counts) > 0 ? maximum(values(counts)) : 0
end
