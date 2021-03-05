# ---
# title: 1178. Number of Valid Words for Each Puzzle
# id: problem1178
# author: Qling
# date: 2021-02-26
# difficulty: Hard
# categories: Hash Table, Bit Manipulation
# link: <https://leetcode.com/problems/number-of-valid-words-for-each-puzzle/description/>
# hidden: true
# ---
# 
# With respect to a given `puzzle` string, a `word` is _valid_  if both the
# following conditions are satisfied:
# 
#   * `word` contains the first letter of `puzzle`.
#   * For each letter in `word`, that letter is in `puzzle`.  
# For example, if the puzzle is "abcdefg", then valid words are "faced",
# "cabbage", and "baggage"; while invalid words are "beefed" (doesn't include
# "a") and "based" (includes "s" which isn't in the puzzle).
# 
# Return an array `answer`, where `answer[i]` is the number of words in the
# given word list `words` that are valid with respect to the puzzle
# `puzzles[i]`.
# 
# 
# 
# **Example :**
# 
#     
#     
#     Input: 
#     words = ["aaaa","asas","able","ability","actt","actor","access"], 
#     puzzles = ["aboveyz","abrodyz","abslute","absoryz","actresz","gaswxyz"]
#     Output: [1,1,3,2,4,0]
#     Explanation:
#     1 valid word for "aboveyz" : "aaaa" 
#     1 valid word for "abrodyz" : "aaaa"
#     3 valid words for "abslute" : "aaaa", "asas", "able"
#     2 valid words for "absoryz" : "aaaa", "asas"
#     4 valid words for "actresz" : "aaaa", "asas", "actt", "access"
#     There're no valid words for "gaswxyz" cause none of the words in the list contains letter 'g'.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= words.length <= 10^5`
#   * `4 <= words[i].length <= 50`
#   * `1 <= puzzles.length <= 10^4`
#   * `puzzles[i].length == 7`
#   * `words[i][j]`, `puzzles[i][j]` are English lowercase letters.
#   * Each `puzzles[i] `doesn't contain repeated characters.
# 
# 
## @lc code=start
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
## @lc code=end
