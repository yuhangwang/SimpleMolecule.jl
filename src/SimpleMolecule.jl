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
include(joinpath("abstract", "AbstractMolecularContainer.jl"))
export AbstractMolecularContainer
end

module Types
include(joinpath("type", "all.jl"))
export Atom
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
export Atom
export MolecularContainer
export obtain, features, clone
end