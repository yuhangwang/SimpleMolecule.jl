__precompile__()
"""
``SimpleMolecule`` is a very simple data type
for containing molecular informations
"""
module SimpleMolecule
macro debug(expression)
    return :(@assert $expression)
    # return nothing
end

macro debug_info(expression)
    return :($expression)
end

export obtain
export Atom

include(joinpath("type", "abstract", "AbstractMolecularContainer.jl"))
include(joinpath("type", "Atom", "Atom.jl"))
end