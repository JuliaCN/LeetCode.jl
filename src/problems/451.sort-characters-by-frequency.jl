# ---
# title: 451. Sort Characters By Frequency
# id: problem451
# author: Indigo
# date: 2021-02-02
# difficulty: Medium
# categories: Hash Table, Heap
# link: <https://leetcode.com/problems/sort-characters-by-frequency/description/>
# hidden: true
# ---
# 
# Given a string, sort it in decreasing order based on the frequency of
# characters.
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     "tree"
#     
#     Output:
#     "eert"
#     
#     Explanation:
#     'e' appears twice while 'r' and 't' both appear once.
#     So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     "cccaaa"
#     
#     Output:
#     "cccaaa"
#     
#     Explanation:
#     Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
#     Note that "cacaca" is incorrect, as the same characters must be together.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input:
#     "Aabb"
#     
#     Output:
#     "bbAa"
#     
#     Explanation:
#     "bbaA" is also a valid answer, but "Aabb" is incorrect.
#     Note that 'A' and 'a' are treated as two different characters.
#     
# 
# 
## @lc code=start
using LeetCode

function frequency_sort(s::String)
    u_vec = codeunits(s)[:]
    freq = fill(0, 128)
    for n in codeunits(s)
        freq[n] += 1
    end
    sort!(u_vec; by=x -> (freq[x], x), rev = true)
    String(u_vec)
end
## @lc code=end
