function length_of_longest_substring(s::String)::Int
    seen = Set{Char}()
    l = 1
    res = 0

    for r in 1: length(s)
        while s[r] in seen
            pop!(seen, s[l])
            l += 1
        end

        push!(seen, s[r])
        res = max(res, r - l + 1)
    end

    return res
end
