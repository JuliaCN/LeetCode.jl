# ---
# title: 1275. Find Winner on a Tic Tac Toe Game
# id: problem1275
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/description/>
# hidden: true
# ---
# 
# Tic-tac-toe is played by two players _A_ and _B_ on a  _3_  x  _3_  grid.
# 
# Here are the rules of Tic-Tac-Toe:
# 
#   * Players take turns placing characters into empty squares (" ").
#   * The first player _A_ always places "X" characters, while the second player _B_  always places "O" characters.
#   * "X" and "O" characters are always placed into empty squares, never on filled ones.
#   * The game ends when there are 3 of the same (non-empty) character filling any row, column, or diagonal.
#   * The game also ends if all squares are non-empty.
#   * No more moves can be played if the game is over.
# 
# Given an array `moves` where each element is another array of size 2
# corresponding to the row and column of the grid where they mark their
# respective character in the order in which _A_ and _B_ play.
# 
# Return the winner of the game if it exists ( _A_ or _B_ ), in case the game
# ends in a draw return "Draw", if there are still movements to play return
# "Pending".
# 
# You can assume that `moves` is  **valid** (It follows the rules of Tic-Tac-
# Toe), the grid is initially empty and _A_ will play **first**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
#     Output: "A"
#     Explanation: "A" wins, he always plays first.
#     "X  "    "X  "    "X  "    "X  "    " **X**  "
#     "   " -> "   " -> " X " -> " X " -> " **X** "
#     "   "    "O  "    "O  "    "OO "    "OO **X** "
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
#     Output: "B"
#     Explanation: "B" wins.
#     "X  "    "X  "    "XX "    "XXO"    "XXO"    "XX **O** "
#     "   " -> " O " -> " O " -> " O " -> "XO " -> "X **O** " 
#     "   "    "   "    "   "    "   "    "   "    " **O**  "
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
#     Output: "Draw"
#     Explanation: The game ends in a draw since there are no moves to make.
#     "XXO"
#     "OOX"
#     "XOX"
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: moves = [[0,0],[1,1]]
#     Output: "Pending"
#     Explanation: The game has not finished yet.
#     "X  "
#     " O "
#     "   "
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= moves.length <= 9`
#   * `moves[i].length == 2`
#   * `0 <= moves[i][j] <= 2`
#   * There are no repeated elements on `moves`.
#   * `moves` follow the rules of tic tac toe.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
