# ---
# title: 345. Reverse Vowels of a String
# id: problem345
# author: Indigo
# date: 2021-08-19
# difficulty: Easy
# categories: Two Pointers, String
# link: <https://leetcode.com/problems/reverse-vowels-of-a-string/description/>
# hidden: true
# ---
# 
# Write a function that takes a string as input and reverse only the vowels of a
# string.
# 
# **Example 1:**
# 
#     
#     
#     Input: "hello"
#     Output: "holle"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "leetcode"
#     Output: "leotcede"
# 
# **Note:**  
# The vowels does not include the letter "y".
# 
# 
# 
# 
## @lc code=start
using LeetCode

function reverse_vowels(s::String)
    in_chars = codeunits(s)[:]
    indices = Int[]
    vowels = Set(['a', 'e', 'i', 'o', 'u'])
    for i in 1:length(s)
        s[i] ∈ vowels && push!(indices, i)
    end
    reverse!(@view(in_chars[indices]))
    in_chars |> pointer |> unsafe_string
end
## @lc code=end
