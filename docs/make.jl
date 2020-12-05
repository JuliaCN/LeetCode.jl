using Documenter
using DemoCards
using JSON

root = joinpath(@__DIR__, "..")
page_root = joinpath(root, "docs", "problems")
page_src = joinpath(root, "src", "problems")
page_dest = joinpath(page_root, "id")

# prepare page contents and page meta
if isdir(page_root)
    rm(page_root; force=true, recursive=true)
end
mkpath(page_root)
cp(page_src, page_dest; force=true)
rm(joinpath(page_dest, "problems.jl")) # no need to render this

# provide a configuration file to tell DemoCards that we want to use number order instead
# of string order
open(joinpath(page_dest, "config.json"), "w") do io
    files = filter(x->x!="config.json", readdir(page_dest))
    sort!(files; by=x->parse(Int, split(x, ".")[1]))
    JSON.print(io, Dict("title"=>"By ID", "order"=>files))
end

## build docs

# 1. generate demo files
demopage, postprocess_cb = makedemos("problems") # the relative path to docs/

# 2. normal Documenter usage
format = Documenter.HTML(prettyurls=get(ENV, "CI", nothing) == "true")
makedocs(format = format,
         pages = [
            "Home" => "index.md",
            demopage,
         ],
         sitename = "LeetCode")

# 3. postprocess after makedocs
postprocess_cb()

deploydocs(repo = "github.com/JuliaCN/LeetCode.jl.git")
