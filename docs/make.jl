using FSDatasets
using Documenter

DocMeta.setdocmeta!(FSDatasets, :DocTestSetup, :(using FSDatasets); recursive=true)

makedocs(;
    modules=[FSDatasets],
    authors="okatsn <okatsn@gmail.com> and contributors",
    repo="https://github.com/okatsn/FSDatasets.jl/blob/{commit}{path}#{line}",
    sitename="FSDatasets.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://okatsn.github.io/FSDatasets.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/okatsn/FSDatasets.jl",
    devbranch="main",
)
