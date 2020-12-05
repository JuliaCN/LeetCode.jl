function is_subsequence(s::String, t::String)::Bool
    if length(s) == 0
        true
    else
        i, j = 1, 1
        while j <= length(t)
            if s[i] == t[j]
                i += 1
                if i > length(s)
                    return true
                end
            end
            j += 1
        end
        false
    end
end
