# ---
# title: 36. Valid Sudoku
# id: problem36
# author: zhwang
# date: 2022-01-23
# difficulty: Medium
# categories: Hash Table
# link: <https://leetcode.com/problems/valid-sudoku/description/>
# hidden: true
# ---
# 
# Determine if a `9 x 9` Sudoku board is valid. Only the filled cells need to be
# validated  **according to the following rules** :
# 
#   1. Each row must contain the digits `1-9` without repetition.
#   2. Each column must contain the digits `1-9` without repetition.
#   3. Each of the nine `3 x 3` sub-boxes of the grid must contain the digits `1-9` without repetition.
# 
# **Note:**
# 
#   * A Sudoku board (partially filled) could be valid but is not necessarily solvable.
#   * Only the filled cells need to be validated according to the mentioned rules.
# 
# 
# 
# **Example 1:**
# 
# ![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Sudoku-
# by-L2G-20050714.svg/250px-Sudoku-by-L2G-20050714.svg.png)
# 
#     
#     
#     Input: board = 
#     [["5","3",".",".","7",".",".",".","."]
#     ,["6",".",".","1","9","5",".",".","."]
#     ,[".","9","8",".",".",".",".","6","."]
#     ,["8",".",".",".","6",".",".",".","3"]
#     ,["4",".",".","8",".","3",".",".","1"]
#     ,["7",".",".",".","2",".",".",".","6"]
#     ,[".","6",".",".",".",".","2","8","."]
#     ,[".",".",".","4","1","9",".",".","5"]
#     ,[".",".",".",".","8",".",".","7","9"]]
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: board = 
#     [["8","3",".",".","7",".",".",".","."]
#     ,["6",".",".","1","9","5",".",".","."]
#     ,[".","9","8",".",".",".",".","6","."]
#     ,["8",".",".",".","6",".",".",".","3"]
#     ,["4",".",".","8",".","3",".",".","1"]
#     ,["7",".",".",".","2",".",".",".","6"]
#     ,[".","6",".",".",".",".","2","8","."]
#     ,[".",".",".","4","1","9",".",".","5"]
#     ,[".",".",".",".","8",".",".","7","9"]]
#     Output: false
#     Explanation: Same as Example 1, except with the **5** in the top left corner being modified to **8**. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `board.length == 9`
#   * `board[i].length == 9`
#   * `board[i][j]` is a digit or `'.'`.
# 
# 
## @lc code=start
using LeetCode

function is_valid_sudoku(board::Vector{Vector{Char}})::Bool
    function check_line(i::Int)::Bool
        s = replace(join(board[i]), "." => "")
        return length(s) == length(Set{Char}(s))
    end
    function check_col(i::Int)::Bool
        s = replace(join(board[k][i] for k in 1:9), '.' => "")
        return length(s) == length(Set{Char}(s))
    end
    function check_box(i::Int, j::Int)::Bool
        s = replace(join(board[i + p1][j + p2] for p1 in 1:3 for p2 in 1:3), "." => "")
        return length(s) == length(Set{Char}(s))
    end
    return all(check_line(i) && check_col(i) for i in 1:9) &&
           all(check_box(3 * (i - 1), 3 * (j - 1)) for i in 1:3 for j in 1:3)
end

## @lc code=end
