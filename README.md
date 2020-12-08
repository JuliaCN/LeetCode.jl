# LeetCode

[![Documentation][docs-dev-img]][docs-dev-url]
[![Unit Test][action-img]][action-url]
[![Code Style: Blue][blue-img]][blue-url]


[中文说明](README-zh-cn.md)

A community driven project to provide solutions for LeetCode problems in the Julia programming language.

## How to contribute?

1. [Fork](https://guides.github.com/activities/forking/) this project.
2. Select a problem template file under the `src/unresolved/` folder, open and write the code, after finishing please **MOVE / CUT** to the `src/problems` folder. 
3. Write test cases inside the `test/problems` folder to make sure the solutions work as expected.
4. For some common components, please put them into the `src/common.jl` file and add test cases in `test/common.jl`.
5. Run `pkg> test` locally to make sure test passes. The test will also format your codes.
6. Commit your changes and make a pull request.
7. You may also **WATCH** this project to help review other's PR or **STAR** this project to spread JuliaLang to others.

## Code template
```julia
# ---
# title: 1. Two Sum
# id: problem1
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/two-sum/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums` and an integer `target`, return _indices of
# the two numbers such that they add up to`target`_.
# 
# You may assume that each input would have **_exactly_ one solution**, and you
# may not use the _same_ element twice.
# 
# You can return the answer in any order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,7,11,15], target = 9
#     Output: [0,1]
#     Output: Because nums[0] + nums[1] == 9, we return [0, 1].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [3,2,4], target = 6
#     Output: [1,2]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [3,3], target = 6
#     Output: [0,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= nums.length <= 103`
#   * `-109 <= nums[i] <= 109`
#   * `-109 <= target <= 109`
#   * **Only one valid answer exists.**
# 
# 
## @lc code=start
using LeetCode

function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()
    for (i, n) in enumerate(nums)
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end
## @lc code=end
```

## Note: 
- Change **date** and **author** to the date of the answer and your own name. If it is not convenient to provide the date or author, you can **delete** the date and author information above.
- Note on comments in coding:
    - line starting with `##` is the Julia code comments.
    - line starting with a single `#` will be parsed as __markdown__ comment.


[action-img]: https://github.com/JuliaCN/LeetCode.jl/workflows/Unit%20test/badge.svg
[action-url]: https://github.com/JuliaCN/LeetCode.jl/actions
[blue-img]: https://img.shields.io/badge/code%20style-blue-4495d1.svg
[blue-url]: https://github.com/invenia/BlueStyle
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://cn.julialang.org/LeetCode.jl/dev/
