# ---
# title: 393. UTF-8 Validation
# id: problem393
# author: zhwang
# date: 2022-02-15
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/utf-8-validation/description/>
# hidden: true
# ---
# 
# A character in UTF8 can be from **1 to 4 bytes** long, subjected to the
# following rules:
# 
#   1. For 1-byte character, the first bit is a 0, followed by its unicode code.
#   2. For n-bytes character, the first n-bits are all one's, the n+1 bit is 0, followed by n-1 bytes with most significant 2 bits being 10.
# 
# This is how the UTF-8 encoding would work:
# 
#     
#     
#        Char. number range  |        UTF-8 octet sequence
#           (hexadecimal)    |              (binary)
#        --------------------+---------------------------------------------
#        0000 0000-0000 007F | 0xxxxxxx
#        0000 0080-0000 07FF | 110xxxxx 10xxxxxx
#        0000 0800-0000 FFFF | 1110xxxx 10xxxxxx 10xxxxxx
#        0001 0000-0010 FFFF | 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
#     
# 
# Given an array of integers representing the data, return whether it is a valid
# utf-8 encoding.
# 
# **Note:**  
# The input is an array of integers. Only the **least significant 8 bits** of
# each integer is used to store the data. This means each integer represents
# only 1 byte of data.
# 
# **Example 1:**
# 
#     
#     
#     data = [197, 130, 1], which represents the octet sequence: **11000101 10000010 00000001**.
#     
#     Return **true**.
#     It is a valid utf-8 encoding for a 2-bytes character followed by a 1-byte character.
#     
# 
# **Example 2:**
# 
#     
#     
#     data = [235, 140, 4], which represented the octet sequence: **11101011 10001100 00000100**.
#     
#     Return **false**.
#     The first 3 bits are all one's and the 4th bit is 0 means it is a 3-bytes character.
#     The next byte is a continuation byte which starts with 10 and that's correct.
#     But the second continuation byte does not start with 10, so it is invalid.
#     
# 
# 
## @lc code=start
using LeetCode

## Automation
function valid_utf8(data::Vector{Int})::Bool
    ## 1 represents 0xxx.., 2 represents 10xx.., 3,4,5 similarly, 6 represents error
    switch(num::Int) = num >= 248 ? 6 : findfirst('0', bitstring(Int16(num))[(end - 7):end])
    ## 1 represents start, 2 represents 2-byte(need one more byte), 3, 4 similarly, 5 represents fail
    state = 1
    state_shift = Dict{Int,Vector{Int}}(1 => [1, 5, 2, 3, 4, 5])
    for i in 2:4
        state_shift[i] = [5, i - 1, 5, 5, 5, 5]
    end
    for num in data
        state = state_shift[state][switch(num)] ## new state
        state == 5 && return false
    end
    return state == 1
end
## @lc code=end
