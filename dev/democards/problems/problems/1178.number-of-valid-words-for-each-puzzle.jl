# @lc code=start
using LeetCode

function get_bit_mask(word::String)::Int
    mask = 0

    for c in word
        i = Int(c) - Int('a')
        mask |= 1 << i
    end

    return mask
end

function find_num_of_valid_words(
    words::Vector{String},
    puzzles::Vector{String},
)::Vector{Int}
    letter_frequencies = Dict{Int,Int}()

    for word in words
        mask = get_bit_mask(word)
        letter_frequencies[mask] = get(letter_frequencies, mask, 0) + 1
    end

    solution = fill(0, length(puzzles))

    for (i, puzzle) in enumerate(puzzles)
        mask = get_bit_mask(puzzle)
        sub_mask = mask
        first_bit_index = Int(puzzle[1]) - Int('a')

        while true
            if (sub_mask >> first_bit_index & 1) == 1
                solution[i] += get(letter_frequencies, sub_mask, 0)
            end
            (sub_mask == 0) && break

            sub_mask = (sub_mask - 1) & mask
        end
    end

    return solution
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

