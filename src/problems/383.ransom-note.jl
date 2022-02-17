# ---
# title: 383. Ransom Note
# id: problem383
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/ransom-note/description/>
# hidden: true
# ---
# 
# Given an arbitrary ransom note string and another string containing letters
# from all the magazines, write a function that will return true if the ransom
# note can be constructed from the magazines ; otherwise, it will return false.
# 
# Each letter in the magazine string can only be used once in your ransom note.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: ransomNote = "a", magazine = "b"
#     Output: false
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ransomNote = "aa", magazine = "ab"
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: ransomNote = "aa", magazine = "aab"
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * You may assume that both strings contain only lowercase letters.
# 
# 
## @lc code=start
using LeetCode
using DataStructures

function can_construct(ransom_note::String, magazine::String)::Bool
    words = DefaultDict{Char,Int}(0)
    for i in magazine
        words[i] += 1
    end
    for i in ransom_note
        words[i] == 0 && return false
        words[i] -= 1
    end
    return true
end
## @lc code=end
