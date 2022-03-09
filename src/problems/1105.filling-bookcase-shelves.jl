# ---
# title: 1105. Filling Bookcase Shelves
# id: problem1105
# author: Indigo
# date: 2022-03-03
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/filling-bookcase-shelves/description/>
# hidden: true
# ---
# 
# We have a sequence of `books`: the `i`-th book has thickness `books[i][0]` and
# height `books[i][1]`.
# 
# We want to place these books **in order**  onto bookcase shelves that have
# total width `shelf_width`.
# 
# We choose some of the books to place on this shelf (such that the sum of their
# thickness is `<= shelf_width`), then build another level of shelf of the
# bookcase so that the total height of the bookcase has increased by the maximum
# height of the books we just put down.  We repeat this process until there are
# no more books to place.
# 
# Note again that at each step of the above process, _the order of the books we
# place is the same order as the given sequence of books_.  For example, if we
# have an ordered list of 5 books, we might place the first and second book onto
# the first shelf, the third book on the second shelf, and the fourth and fifth
# book on the last shelf.
# 
# Return the minimum possible height that the total bookshelf can be after
# placing shelves in this manner.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/06/24/shelves.png)
# 
#     
#     
#     Input: books = [[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]], shelf_width = 4
#     Output: 6
#     Explanation:
#     The sum of the heights of the 3 shelves are 1 + 3 + 2 = 6.
#     Notice that book number 2 does not have to be on the first shelf.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= books.length <= 1000`
#   * `1 <= books[i][0] <= shelf_width <= 1000`
#   * `1 <= books[i][1] <= 1000`
# 
# 
## @lc code=start
using LeetCode

function min_height_shelves(books::Vector{Vector{Int}}, shelf_width::Int)
    n = length(books)
    dp = OffsetArray(fill(typemax(Int) >> 1, n + 1), -1)    
    dp[0] = 0
    for i in 1:n
        idx, width, height = i - 1, books[i][1], books[i][2]
        while width <= shelf_width
            dp[i] = min(dp[i], dp[idx] + height)
            idx == 0 && break
            height = max(height, books[idx][2])
            width += books[idx][1]
            idx -= 1
        end
    end
    dp[end]
end
## @lc code=end
