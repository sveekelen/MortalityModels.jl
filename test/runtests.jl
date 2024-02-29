using PopMoMo
using Test

@testset "PopMoMo.jl" begin
    # Perform simple test
    LC_SVD([1]) == (Kt = [-0.0], Ax = [1.0], Bx = [-1.0])
end
