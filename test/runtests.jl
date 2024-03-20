using Test

DIGITS = 10

include("../src/Includes.jl")
include("src/ErrorAnalysis/test_RoundOffErrors.jl")
include("src/ErrorAnalysis/test_RoundArithmetics.jl")

"""
Use this to test all!


for (root, dirs, files) in walkdir(joinpath(pwd(), "src"))
    for file in files
        include(joinpath(root, file))
    end
end
"""
