# LeetCode

[![Build Status](https://travis-ci.com/JuliaCN/LeetCode.jl.svg?branch=master)](https://travis-ci.com/JuliaCN/LeetCode.jl) [![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)


[中文说明](README-zh-cn.md)

A community driven project to provide solutions for LeetCode problems in the Julia programming language.

## How to contribute?

1. [Fork](https://guides.github.com/activities/forking/) this project.
1. Create a new problem file under the `src/problems/` folder. You may want to use tools like [leetcode-cli](https://github.com/skygragon/leetcode-cli) with the command like `leetcode show 1 -g -x -l python` to generate a `python` template and then modify the code and rename it into a `.jl` file. (You may also consider [LeetCode VSCode Plugin](https://marketplace.visualstudio.com/items?itemName=LeetCode.vscode-leetcode) if you use VSCode)
1. Update the `src/problems/problems.jl` file to include the problem file you created above.
1. Write test cases inside the `test/problems` folder to make sure the solutions work as expected. Update `test/problems/problems.jl` file to include the test files.
1. For some common components, please put them into the `src/common.jl` file and add test cases in `test/common.jl`.
1. Commit your changes and make a pull request.
1. You may also **WATCH** this project to help review other's PR or **STAR** this project to spread JuliaLang to others.
