using Documenter
using DemoCards
using JSON

root = joinpath(@__DIR__, "..")

# these are tracked by git
raw_unresolved_dir = joinpath(root, "src", "unresolved")
raw_resolved_dir = joinpath(root, "src", "resolved")

# where the unresolved and resolved files are generated -- this won't be tracked by git
page_root = abspath(root, "docs", "problems")
page_unresolved = abspath(page_root, "unresolved")
page_resolved = abspath(page_root, "resolved")

if isdir(page_root)
    rm(page_root; force=true, recursive=true)
end
mkpath(page_unresolved)
mkpath(page_resolved)

# 1. copy the whole resolved and unresolved file dir
cp(raw_unresolved_dir, page_unresolved; force=true)
cp(raw_resolved_dir, page_resolved; force=true)
rm(joinpath(page_resolved, "problems.jl")) # no need to render this

# 2. provide a configuration file to tell DemoCards that we want to use number order instead of string order
open(joinpath(page_unresolved, "config.json"), "w") do io
    files = filter(x->x!="config.json", readdir(page_unresolved))
    sort!(files; by=x->parse(Int, split(x, ".")[1]))
    JSON.print(io, Dict("title"=>"Unresolved Problems", "order"=>files))
end

open(joinpath(page_resolved, "config.json"), "w") do io
    files = filter(x->x!="config.json", readdir(page_resolved))
    sort!(files; by=x->parse(Int, split(x, ".")[1]))
    JSON.print(io, Dict("title"=>"Resolved Problems", "order"=>files))
end

## build docs

# 1. generate demo files
demopage, postprocess_cb = makedemos("problems")

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