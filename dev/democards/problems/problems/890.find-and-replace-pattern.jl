# @lc code=start
using LeetCode

function find_and_replace_pattern(words::Vector{String}, pattern::String)
    function arr_pattern(s::String)
        arr_pt = Char[]
        dct = Dict{Char, Char}()
        cur_ch = 'a'
        for ch in s
            if !haskey(dct, ch)
                dct[ch] = cur_ch
                cur_ch += 1
            end
            push!(arr_pt, dct[ch])
        end
        arr_pt
    end
    res = String[]
    a_pt = arr_pattern(pattern)
    for w in words
        if a_pt == arr_pattern(w)
            push!(res, w)
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

