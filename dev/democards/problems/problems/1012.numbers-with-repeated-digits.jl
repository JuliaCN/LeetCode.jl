# @lc code=start
using LeetCode

function num_dup_digits_at_most_n(N::Int)
    ori = N
    b = 9
    while 10^b > N
        b -= 1
    end
    res = sum(binomial(9, i) * factorial(i) * 9 for i in 0:(b - 1))
    num_bits = Set{Int}()
    k = b
    while b >= 0
        num_bit = N ÷ 10^b
        N %= 10^b
        if !(num_bit in num_bits)
            if isempty(num_bits)
                le_num = num_bit - 1
            else
                le_num = num_bit - sum(nb < num_bit for nb in num_bits)
            end
            res += binomial(9 - k + b, b) * factorial(b) * (le_num)
            push!(num_bits, num_bit)
        else
            return ori - res
        end
        b -= 1
    end
    ori - res - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

