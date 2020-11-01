"""
# [3] Longest Substring Without Repeating Characters

https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

- algorithms
- Medium (29.39%)
- Likes:    7482
- Dislikes: 440
- Total Accepted:    1.3M
- Total Submissions: 4.3M
- Testcase Example:  '"abcabcbb"'

Given a string, find the length of the longest substring without repeating
characters.


## Example 1:


Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 



## Example 2:


Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.



## Example 3:


Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
⁠            Note that the answer must be a substring, "pwke" is a
subsequence and not a substring.
"""
function length_of_longest_substring(s::String)::Int
    seen = Set{Char}()
    res = 0

    for x in s
        if x in seen
            empty!(seen)
        end
        push!(seen, x)
        res = max(res, length(seen))
    end
    return res
end
