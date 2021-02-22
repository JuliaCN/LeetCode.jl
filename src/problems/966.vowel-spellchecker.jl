# ---
# title: 966. Vowel Spellchecker
# id: problem966
# author: Indigo
# date: 2021-01-19
# difficulty: Medium
# categories: Hash Table, String
# link: <https://leetcode.com/problems/vowel-spellchecker/description/>
# hidden: true
# ---
# 
# Given a `wordlist`, we want to implement a spellchecker that converts a query
# word into a correct word.
# 
# For a given `query` word, the spell checker handles two categories of spelling
# mistakes:
# 
#   * Capitalization: If the query matches a word in the wordlist ( **case-insensitive** ), then the query word is returned with the same case as the case in the wordlist. 
#     * Example: `wordlist = ["yellow"]`, `query = "YellOw"`: `correct = "yellow"`
#     * Example: `wordlist = ["Yellow"]`, `query = "yellow"`: `correct = "Yellow"`
#     * Example: `wordlist = ["yellow"]`, `query = "yellow"`: `correct = "yellow"`
#   * Vowel Errors: If after replacing the vowels ('a', 'e', 'i', 'o', 'u') of the query word with any vowel individually, it matches a word in the wordlist ( **case-insensitive** ), then the query word is returned with the same case as the match in the wordlist. 
#     * Example: `wordlist = ["YellOw"]`, `query = "yollow"`: `correct = "YellOw"`
#     * Example: `wordlist = ["YellOw"]`, `query = "yeellow"`: `correct = ""` (no match)
#     * Example: `wordlist = ["YellOw"]`, `query = "yllw"`: `correct = ""` (no match)
# 
# In addition, the spell checker operates under the following precedence rules:
# 
#   * When the query exactly matches a word in the wordlist ( **case-sensitive** ), you should return the same word back.
#   * When the query matches a word up to capitlization, you should return the first such match in the wordlist.
#   * When the query matches a word up to vowel errors, you should return the first such match in the wordlist.
#   * If the query has no matches in the wordlist, you should return the empty string.
# 
# Given some `queries`, return a list of words `answer`, where `answer[i]` is
# the correct word for `query = queries[i]`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: wordlist = ["KiTe","kite","hare","Hare"], queries = ["kite","Kite","KiTe","Hare","HARE","Hear","hear","keti","keet","keto"]
#     Output: ["kite","KiTe","KiTe","Hare","hare","","","KiTe","","KiTe"]
# 
# 
# 
# **Note:**
# 
#   * `1 <= wordlist.length <= 5000`
#   * `1 <= queries.length <= 5000`
#   * `1 <= wordlist[i].length <= 7`
#   * `1 <= queries[i].length <= 7`
#   * All strings in `wordlist` and `queries` consist only of **english**  letters.
# 
# 
## @lc code=start
using LeetCode

function spellchecker(wordlist::Vector{String}, queries::Vector{String})
    wls = Set(wordlist)
    d1 = DefaultDict{String,Vector{Int}}(Vector{Int})
    d2 = deepcopy(d1)
    for (idx, word) in enumerate(wordlist)
        lc = lowercase(word)
        push!(d1[lc], idx)
        push!(d2[replace(lc, r"[eiou]" => "a")], idx)
    end
    len = length(wordlist)
    res = fill("", length(queries))
    for (idx, q) in enumerate(queries)
        lc = lowercase(q)
        lcy = replace(lc, r"[eiou]" => "a")
        if q ∈ wls
            res[idx] = q
            continue
        elseif get(d1, lc, nothing) !== nothing
            res[idx] = wordlist[d1[lc][1]]
        elseif get(d2, lcy, nothing) !== nothing
            res[idx] = wordlist[d2[lcy][1]]
        end
    end
    return res
end
## @lc code=end
