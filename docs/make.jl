using Documenter
using DemoCards
using JSON

root = joinpath(@__DIR__, "..")

# these are tracked by git
raw_problems_dir = joinpath(root, "src", "problems")
raw_theme_dir = joinpath(root, "docs", "leetcode_theme")

# where the problems files are generated -- this won't be tracked by git
page_root = abspath(root, "docs", "problems")
page_problems = abspath(page_root, "problems")

if isdir(page_root)
    rm(page_root; force=true, recursive=true)
end
mkpath(page_problems)

# 1. copy the whole problems file dir
cp(raw_problems_dir, page_problems; force=true)
rm(joinpath(page_problems, "problems.jl")) # no need to render this

# 2. provide a configuration file to tell DemoCards that we want to use number order instead of string order

open(joinpath(page_problems, "config.json"), "w") do io
    files = filter(x->x!="config.json", readdir(page_problems))
    sort!(files; by=x->parse(Int, split(x, ".")[1]))
    JSON.print(io, Dict("title"=>"Problems", "order"=>files))
end

## build docs

# 1. generate demo files
demopage, postprocess_cb = makedemos("problems")

# 2. normal Documenter usage
format = Documenter.HTML(
    prettyurls=get(ENV, "CI", nothing) == "true"
    )
makedocs(format = format,
         pages = [
            "Home" => "index.md",
            demopage,
         ],
         sitename = "LeetCode")

# 3. hide the code
js_dir = abspath(root, "docs", "build", "assets")
css_dir = abspath(js_dir, "themes")

# 3.1 modify the css file to seting the style of code
for filename in readdir(css_dir)
    css_file = joinpath(css_dir, filename)
    # change the permissions mode of files
    chmod(css_file, 0o777)

    # add code in the end of line
    css_data = read(joinpath(raw_theme_dir, "leetcode.css"))
    open(css_file, "a") do io
        write(io, css_data)
    end
end

# 3.2 modify the documenter.js to setting the mouse actions
documenter_file = joinpath(js_dir, "documenter.js")

# add code in the end of line
js_data = read(joinpath(raw_theme_dir, "leetcode.js"))
open(documenter_file, "a") do io
    write(io, js_data)
end 

# 4. postprocess after makedocs
postprocess_cb()

deploydocs(repo = "github.com/JuliaCN/LeetCode.jl.git")