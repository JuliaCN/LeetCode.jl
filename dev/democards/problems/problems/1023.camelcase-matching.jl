# @lc code=start
using LeetCode

function matches(query, pattern)
    i, j = 1, 1
    while i <= length(query) && j <= length(pattern)
        if query[i] == pattern[j]
            j += 1
        elseif isuppercase(query[i])
            return false
        end
        i += 1
    end
    return j > length(pattern) && all(!isuppercase, query[i:end])
end

function camelMatch(queries, pattern)
    return [matches(query, pattern) for query in queries]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

