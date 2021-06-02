# ---
# title: 79. Word Search
# id: problem79
# author: Indigo
# date: 2021-06-02
# difficulty: Medium
# categories: Array, Backtracking
# link: <https://leetcode.com/problems/word-search/description/>
# hidden: true
# ---
# 
# Given an `m x n` `board` and a `word`, find if the word exists in the grid.
# 
# The word can be constructed from letters of sequentially adjacent cells, where
# "adjacent" cells are horizontally or vertically neighboring. The same letter
# cell may not be used more than once.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/04/word2.jpg)
# 
#     
#     
#     Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/04/word-1.jpg)
# 
#     
#     
#     Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
#     Output: true
#     
# 
# **Example 3:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/15/word3.jpg)
# 
#     
#     
#     Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == board.length`
#   * `n = board[i].length`
#   * `1 <= m, n <= 200`
#   * `1 <= word.length <= 103`
#   * `board` and `word` consists only of lowercase and uppercase English letters.
# 
# 
## @lc code=start
using LeetCode

function is_word_exist(board::Matrix{Char}, word::String)
    function _backtracking_search(board::Matrix{Char}, word::String, pos::CartesianIndex{2},
                                  depth::Int)::Bool
        depth > length(word) && return true
        (pos ∉ CartesianIndices(board) || board[pos] != word[depth]) && return false
        board[pos] += 256
        res = _backtracking_search(board, word, pos + CartesianIndex(1, 0), depth + 1) ||
              _backtracking_search(board, word, pos + CartesianIndex(-1, 0), depth + 1) ||
              _backtracking_search(board, word, pos + CartesianIndex(0, 1), depth + 1) ||
              _backtracking_search(board, word, pos + CartesianIndex(0, -1), depth + 1)
        board[pos] -= 256
        return res
    end
    for idx in CartesianIndices(board)
        _backtracking_search(board, word, idx, 1) && return true
    end
    return false
end

## @lc code=end
