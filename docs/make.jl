using Documenter, MLDatasets

DocMeta.setdocmeta!(MLDatasets, :DocTestSetup, :(using MLDatasets); recursive=true)

# Build documentation.
# ====================

makedocs(
    modules = [MLDatasets],
    doctest = true,
    clean = false,
    sitename = "MLDatasets.jl",
    format = Documenter.HTML(
        canonical = "https://juliadata.github.io/MLDatasets.jl/stable/",
        assets = ["assets/favicon.ico"],
        prettyurls = get(ENV, "CI", nothing) == "true"
    ),

    authors = "Hiroyuki Shindo, Christof Stocker",
    pages = Any[
        "Home" => "index.md",
        "Available Datasets" => Any[
            "Vision" => Any[
                "MNIST" => "datasets/MNIST.md",
                "FashionMNIST" => "datasets/FashionMNIST.md",
                "CIFAR-10" => "datasets/CIFAR10.md",
                "CIFAR-100" => "datasets/CIFAR100.md",
                "SVHN format 2" => "datasets/SVHN2.md",
            ],
            "Misc." => Any[
                "Iris" => "datasets/Iris.md",
                "Boston Housing" => "datasets/BostonHousing.md",
            ],
            
            "Text" => Any[
                "PTBLM" => "datasets/PTBLM.md",
                "UD_English" => "datasets/UD_English.md",
            ],

        ],
        "LICENSE.md",
    ]
)


deploydocs(repo = "github.com/JuliaML/MLDatasets.jl.git")