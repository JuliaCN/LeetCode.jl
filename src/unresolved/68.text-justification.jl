# ---
# title: 68. Text Justification
# id: problem68
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: String
# link: <https://leetcode.com/problems/text-justification/description/>
# hidden: true
# ---
# 
# Given an array of words and a width  _maxWidth_ , format the text such that
# each line has exactly _maxWidth_ characters and is fully (left and right)
# justified.
# 
# You should pack your words in a greedy approach; that is, pack as many words
# as you can in each line. Pad extra spaces `' '` when necessary so that each
# line has exactly _maxWidth_ characters.
# 
# Extra spaces between words should be distributed as evenly as possible. If the
# number of spaces on a line do not divide evenly between words, the empty slots
# on the left will be assigned more spaces than the slots on the right.
# 
# For the last line of text, it should be left justified and no **extra** space
# is inserted between words.
# 
# **Note:**
# 
#   * A word is defined as a character sequence consisting of non-space characters only.
#   * Each word's length is guaranteed to be greater than 0 and not exceed _maxWidth_.
#   * The input array `words` contains at least one word.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: words = ["This", "is", "an", "example", "of", "text", "justification."], maxWidth = 16
#     Output:
#     [
#        "This    is    an",
#        "example  of text",
#        "justification.  "
#     ]
# 
# **Example 2:**
# 
#     
#     
#     Input: words = ["What","must","be","acknowledgment","shall","be"], maxWidth = 16
#     Output:
#     [
#       "What   must   be",
#       "acknowledgment  ",
#       "shall be        "
#     ]
#     Explanation: Note that the last line is "shall be    " instead of "shall     be", because the last line must be left-justified instead of fully-justified.
#     Note that the second line is also left-justified becase it contains only one word.
# 
# **Example 3:**
# 
#     
#     
#     Input: words = ["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], maxWidth = 20
#     Output:
#     [
#       "Science  is  what we",
#       "understand      well",
#       "enough to explain to",
#       "a  computer.  Art is",
#       "everything  else  we",
#       "do                  "
#     ]
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= words.length <= 300`
#   * `1 <= words[i].length <= 20`
#   * `words[i]` consists of only English letters and symbols.
#   * `1 <= maxWidth <= 100`
#   * `words[i].length <= maxWidth`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
