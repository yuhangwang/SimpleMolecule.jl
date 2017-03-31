using Base.Test

include(joinpath("..","src","SimpleMolecule.jl"))

using SimpleMolecule

include(joinpath("Atom", "runtests.jl"))
