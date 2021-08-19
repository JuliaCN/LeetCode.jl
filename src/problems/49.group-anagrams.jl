# ---
# title: 49. Group Anagrams
# id: problem49
# author: Jimmy Shen
# date: 2021-08-12
# difficulty: Medium
# categories: Hash Table, String
# link: <https://leetcode.com/problems/group-anagrams/description/>
# hidden: true
# ---
#
# Given an array of strings `strs`, group **the anagrams** together. You can
# return the answer in **any order**.
#
# An **Anagram** is a word or phrase formed by rearranging the letters of a
# different word or phrase, typically using all the original letters exactly
# once.
#
#
#
# **Example 1:**
#
#
#
#     Input: strs = ["eat","tea","tan","ate","nat","bat"]
#     Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
#
#
# **Example 2:**
#
#
#
#     Input: strs = [""]
#     Output: [[""]]
#
#
# **Example 3:**
#
#
#
#     Input: strs = ["a"]
#     Output: [["a"]]
#
#
#
#
# **Constraints:**
#
#   * `1 <= strs.length <= 104`
#   * `0 <= strs[i].length <= 100`
#   * `strs[i]` consists of lower-case English letters.
#
#
## @lc code=start
using LeetCode
using DataStructures

function group_anagrams(strs::Vector{String})::Vector{Vector{String}}
    swords = DefaultDict{AbstractString,Vector{String}}(Vector{Int})
    for word in strs
        key = join(sort(collect(word)))
        push!(swords[key], word)
    end
    res = Vector{Vector{String}}()
    for (k, v) in swords
        push!(res, v)
    end
    return res
end
## @lc code=end
