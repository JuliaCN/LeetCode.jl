# @lc code=start
using LeetCode

function strStr(haystack::String, needle::String)
    needle == "" && return 0
    for i in 1:(length(haystack) - length(needle) + 1)
        if @view(haystack[i:(i + length(needle) - 1)]) == needle
            return i - 1 # Notice that Julia is 1-indexed, and here we need 0-indexed so minus 1
        end
    end
    return -1
end

function strStr2(haystack::AbstractString, needle::AbstractString)

    isempty(needle) && return 0
    length(needle) > length(haystack) && return -1

    needle == @view(haystack[1:length(needle)]) && return 0

    ind = @views strStr2(haystack[2:end], needle)
    return ind == -1 ? -1 : ind + 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

