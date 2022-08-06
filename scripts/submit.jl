#!/bin/env julia
# date: 2022-03-01
# description: Julia script for submitting temp solution
# example: `tools/submit.jl 1234`

## check position of this script
cd(Base.source_dir())
path_to_repo = ".." ## path to "LeetCode.jl"

## source information
problem_path = "$path_to_repo/src/problems/"
unresolved_path = "$path_to_repo/src/unresolved/"
test_path = "$path_to_repo/test/problems/"
problems, unresolved, tests = readdir.([problem_path, unresolved_path, test_path])

## information of the solution
ind = ARGS[1]
presubmits = readdir("presolution/")
preinds = first.(split.(presubmits, '.', keepempty=false))
ind ∉ preinds && throw("Problem $ind not found!")
file = presubmits[findfirst(==(ind), preinds)]

## read solution
mkpath.(["submit", "submit/problems", "submit/tests"])
content = read("presolution/$file", String)
test = match(r"## @lc test=start\n([\s\S]*)\n## @lc test=end", content).captures[1]
body = match(r"[\s\S]*## @lc code=end", content).match

## write solution
open("submit/problems/$file", "w") do io
    write(io, body)
end
open("submit/tests/$file", "w") do io
    write(io, replace(test, "using Test\n"=>""))
end

## move files
file ∈ unresolved && rm(unresolved_path * file)
cp("submit/problems/$file", problem_path * file; force=true)
cp("submit/tests/$file", test_path * file; force=true)
println("Problem $ind submited succesfully")
