# ---
# title: 30. Substring with Concatenation of All Words
# id: problem30
# author: Qling
# date: 2021-05-28
# difficulty: Hard
# categories: Hash Table, Two Pointers, String
# link: <https://leetcode.com/problems/substring-with-concatenation-of-all-words/description/>
# hidden: true
# ---
# 
# You are given a string `s` and an array of strings `words` of **the same
# length**. Return all starting indices of substring(s) in `s` that is a
# concatenation of each word in `words` **exactly once** , **in any order** ,
# and **without any intervening characters**.
# 
# You can return the answer in **any order**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "barfoothefoobarman", words = ["foo","bar"]
#     Output: [0,9]
#     Explanation: Substrings starting at index 0 and 9 are "barfoo" and "foobar" respectively.
#     The output order does not matter, returning [9,0] is fine too.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
#     Output: [6,9,12]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 104`
#   * `s` consists of lower-case English letters.
#   * `1 <= words.length <= 5000`
#   * `1 <= words[i].length <= 30`
#   * `words[i]` consists of lower-case English letters.
# 
# 
## @lc code=start
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
            ## Get the next word from the string
            word = s[next_word_index: next_word_index + word_len - 1]
            ## Break if we don't need this word
            !haskey(words_map, word) && break
            ## Add the word to the 'words_seen' map
            words_seen[word] += 1
            ## No need to process further if the word has higher frequency than required
            words_seen[word] > get!(words_map, word, 0) && break

            ## Store index if we have found all the words
            (j + 1 == words_count) && push!(results_indices, i)
        end
    end

    return results_indices
end
## @lc code=end
