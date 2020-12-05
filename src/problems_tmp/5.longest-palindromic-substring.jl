function longest_palindrome(s::String)::AbstractString
    res = ""
    for i in 1:length(s)
        s_odd = _longest_palindrome(s, i, i)
        if length(s_odd) > length(res)
            res = s_odd
        end
        s_even = _longest_palindrome(s, i, i + 1)
        if length(s_even) > length(res)
            res = s_even
        end
    end
    return res
end

function _longest_palindrome(s, l, r)
    while l >= 1 && r <= length(s) && s[l] == s[r]
        l -= 1
        r += 1
    end
    return SubString(s, l + 1, r - 1)
end
