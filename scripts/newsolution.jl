#!/bin/env julia
# date: 2022-04-04
# description: Julia script for creating temp solution
# example: `tools/newsolution.jl 1234`

## path to "LeetCode.jl"
cd(Base.source_dir())
path_to_repo = ".."

## input/output directory
unsolved_problems_dir = "$path_to_repo/src/unresolved/"
solved_problems_dir = "$path_to_repo/src/problems/"
mkpath("presolution/")

## repo information
solves = filter!(!=("problems.jl"), readdir(solved_problems_dir))
solved_inds = first.(split.(solves, '.'; keepempty=false))
unsolves = readdir(unsolved_problems_dir)
unsolved_inds = first.(split.(unsolves, '.'; keepempty=false))

## problem information
ind, indnum = ARGS[1], parse(Int, ARGS[1])
ind ∈ solved_inds && throw("Solution to $(ind) already exist")
ind ∉ unsolved_inds && indnum <= 1681 && throw("Sorry, membership questions are not supported")
indnum > 1681 && throw("Problems with index exceeding 1681 are not supported yet")
filename = unsolves[findfirst(==(ind), unsolved_inds)]
println("File recognized: $filename")
filename in readdir("presolution") && throw("Local solution to $(ind) already exist! Please check again.")

######### generate template file #########
## user config
".config" ∈ readdir(".") || touch(".config")
author = match(r"author: (.*)", read(".config", String))
if isnothing(author)
    print("This is your first time to run the script, input author name here:")
    open(".config", "w") do io
        author = strip(readline())
        write(io, "author: $author" )
    end
else
    author = author.captures[1]
end
date = strip(read(`date "+%Y-%m-%d"`, String))

## author/date
text = read(unsolved_problems_dir * filename, String) ## original text
if isempty("author") ## no author
    text = replace(text, r"# author: .+\n" => "")
else
    text = replace(text, r"(?<=# author: )(.+)" => author)
end
text = replace(text, r"(?<=# date: )(.+)" => date)
text = replace(text, "## add your code here:" => "")

## add test
text *= """
## @lc test=start
using Test
@testset "$filename" begin
    @test 
end
## @lc test=end"""

## generate file
open("presolution/$filename", "w") do io
    write(io, text)
end

println("Template succesfully generated
##############################
output directory: presolution
filename: $(filename)
author: $(isempty(author) ? "None" : author)
date: $date
##############################")