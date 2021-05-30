# @lc code=start
using LeetCode
using DataStructures

function find_word_concatenation(s::String, words::Vector{String})::Vector{Int}
    (length(words) == 0 || length(words[1]) == 0) && return 0
    words_map = counter(words)
    results_indices = Int[]
    word_len, words_count = length(words[1]), length(words)

    for i in 1: (length(s) - word_len * words_count + 1)
        words_seen = DefaultDict{String, Int}(0)
        for j in 0: words_count - 1
            next_word_index = i + j * word_len
            # Get the next word from the string
            word = s[next_word_index: next_word_index + word_len - 1]
            # Break if we don't need this word
            !haskey(words_map, word) && break
            # Add the word to the 'words_seen' map
            words_seen[word] += 1
            # No need to process further if the word has higher frequency than required
            words_seen[word] > get(words_map, word, 0) && break

            # Store index if we have found all the words
            (j + 1 == words_count) && push!(results_indices, i)
        end
    end

    return results_indices
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

