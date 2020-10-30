# LeetCode in Julia - 用 Julia 编写力扣题目

[![Build Status](https://travis-ci.com/JuliaCN/LeetCode.jl.svg?branch=master)](https://travis-ci.com/JuliaCN/LeetCode.jl) [![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)

社区驱动的项目：用 Julia 做 LeetCode 题目

## 如何做出贡献？

1. [Fork](https://guides.github.com/activities/forking/) 本项目
2. 使用 `git clone` 本项目
3. 在 `src/problems/` 路径下新建一个文件夹。
    你可能会想要使用像 [leetcode-cli](https://github.com/skygragon/leetcode-cli) 这样辅助工具，
    通过 `leetcode show 1 -g -x -l python` 命令来生成一个 `python` 的模板，并将其重命名为 `.jl` 文件。
    （如果你使用 VSCode 你也可能需要 [LeetCode VSCode 插件](https://marketplace.visualstudio.com/items?itemName=LeetCode.vscode-leetcode)）
4. 更新 `src/problems/problems.jl` 文件，添加你刚刚创建的文件。
5. 在 `test/problems` 文件夹下编写测试样例，确保你的解答能满足题目的要求。
    然后更新 `test/problems/problems.jl` 文件以包含新的测试文件。
6. 对于一些共同的组件，将他们放到 `src/common.jl` 中，并在 `test/common.jl` 里添加测试。
7. 提交（commit）你的更改，并开启一个新的合并请求（pull request）。
8. 你还可以 **关注（WATCH）** 此项目以帮助审阅其他人的合并请求，或者 **点个赞（STAR）** 以鼓励本项目的贡献者们。
