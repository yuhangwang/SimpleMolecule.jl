include(joinpath("..", "src", "SimpleMolecule.jl"))
include(joinpath("Common", "Common.jl"))
include(joinpath("TestAtom", "TestAtom.jl"))
include(joinpath("TestMolecule", "TestMolecule.jl"))

TestAtom.run_tests()

