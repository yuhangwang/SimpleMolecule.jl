__precompile__()
"""
``SimpleMolecule`` is a very simple data type
for containing molecular informations
"""
module SimpleMolecule

module Macros
include(joinpath("macro", "debug.jl"))
include(joinpath("macro", "debug_info.jl"))
export debug, debug_info
end

module Abstract
include(joinpath("abstract", "all.jl"))
export AbstractMolecularContainer
end

module Types
include(joinpath("type", "all.jl"))
export Atom, Molecule
end

module TypeClasses
include(joinpath("typeclass", "all.jl"))
export MolecularContainer
export obtain, clone, features
end



using .Abstract
using .Types
using .TypeClasses

export AbstractMolecularContainer
export MolecularContainer
export Atom, Molecule
export obtain, features, clone
end