using MortalityModels
using Test

@testset "MortalityModels.jl" begin
    # Perform simple test
    LC_SVD([1]) == (Kt = [-0.0], Ax = [1.0], Bx = [-1.0])
end
