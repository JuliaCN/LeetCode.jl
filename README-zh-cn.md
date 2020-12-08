# LeetCode in Julia - 用 Julia 编写力扣题目

[![Documentation][docs-dev-img]][docs-dev-url]
[![Unit Test][action-img]][action-url]
[![Code Style: Blue][blue-img]][blue-url]

社区驱动的项目：用 Julia 做 LeetCode 题目

## 如何做出贡献？

1. [Fork](https://guides.github.com/activities/forking/) 本项目
2. 使用 `git clone` 本项目
3. 在 `src/unresolved` 路径下选择题目模板文件，打开并填写你的解答，完成后请将其**移动**(**剪切**)到`src/problems`路径下。
4. 在 `test/problems` 文件夹下编写测试样例，确保你的解答能满足题目的要求。
5. 对于一些共同的组件，将他们放到 `src/common.jl` 中，并在 `test/common.jl` 里添加测试。
6. 通过 `pkg> test` 测试结果是否正确， 测试过程会格式化代码
7. 提交（commit）你的更改，并开启一个新的合并请求（pull request）。
8. 你还可以 **关注（WATCH）** 此项目以帮助审阅其他人的合并请求，或者 **点个赞（STAR）** 以鼓励本项目的贡献者们。

## 代码模板
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

## 需要注意的事项

- 将 date 和 author 改成解答的日期以及你自己的名字，如果不方便提供日期或者名字的话，可以删掉题目里的 date 和 author 信息
- 代码注释所要注意的：
    - 以 ## 开头的内容被认为是 Julia 的注释
    - 以 # 开头的内容被认为是正常的 __markdown__ 内容


[action-img]: https://github.com/JuliaCN/LeetCode.jl/workflows/Unit%20test/badge.svg
[action-url]: https://github.com/JuliaCN/LeetCode.jl/actions
[blue-img]: https://img.shields.io/badge/code%20style-blue-4495d1.svg
[blue-url]: https://github.com/invenia/BlueStyle
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://cn.julialang.org/LeetCode.jl/dev/
