# @lc code=start
using LeetCode

function num_ways(word::Vector{String}, target::String)
    len_t, len_s, len_w = length(target), length(word[1]), length(word)
    dp, cntr = fill(0, len_t, len_s), fill(0, len_s, 128)

    for i in 1:len_s
        for s in word
            cntr[i, s[i] |> Int] += 1
        end
    end
    for i in 1:len_s-len_t+1
        dp[1, i] = cntr[i, target[1] |> Int]
    end
    for i in 2:len_t
        acc = 0
        for j in i:i+len_s-len_t
            mul = cntr[j, target[i] |> Int]
            acc += dp[i - 1, j - 1]
            dp[i, j] = acc * mul % 1000000007
        end
    end
    # display(dp)
    sum(dp[len_t, len_t:end]) % 1000000007
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

