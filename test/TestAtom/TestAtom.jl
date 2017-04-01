module TestAtom
using SimpleMolecule
using Base.Test

include("run_test_comparison.jl")
include("run_test_obtain.jl")
include("run_test_constructor.jl")
include("run_test_clone.jl")

function run_tests()
    run_test_comparison()
    run_test_obtain()
    run_test_constructor()
    run_test_clone()
end

end
