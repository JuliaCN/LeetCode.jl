# ---
# title: 809. Expressive Words
# id: problem809
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/expressive-words/description/>
# hidden: true
# ---
# 
# Sometimes people repeat letters to represent extra feeling, such as "hello" ->
# "heeellooo", "hi" -> "hiiii".  In these strings like "heeellooo", we have
# _groups_ of adjacent letters that are all the same:  "h", "eee", "ll", "ooo".
# 
# For some given string `S`, a query word is _stretchy_ if it can be made to be
# equal to `S` by any number of applications of the following _extension_
# operation: choose a group consisting of characters `c`, and add some number of
# characters `c` to the group so that the size of the group is 3 or more.
# 
# For example, starting with "hello", we could do an extension on the group "o"
# to get "hellooo", but we cannot get "helloo" since the group "oo" has size
# less than 3.  Also, we could do another extension like "ll" -> "lllll" to get
# "helllllooo".  If `S = "helllllooo"`, then the query word "hello" would be
# stretchy because of these two extension operations: `query = "hello" ->
# "hellooo" -> "helllllooo" = S`.
# 
# Given a list of query words, return the number of words that are stretchy.
# 
# 
# 
#     
#     
#     **Example:**
#     Input: 
#     S = "heeellooo"
#     words = ["hello", "hi", "helo"]
#     Output: 1
#     Explanation: 
#     We can extend "e" and "o" in the word "hello" to get "heeellooo".
#     We can't extend "helo" to get "heeellooo" because the group "ll" is not size 3 or more.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= len(S) <= 100`.
#   * `0 <= len(words) <= 100`.
#   * `0 <= len(words[i]) <= 100`.
#   * `S` and all words in `words` consist only of lowercase letters
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
