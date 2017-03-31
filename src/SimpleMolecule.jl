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

include(joinpath("type", "Types.jl"))
include(joinpath("fn", "Fn.jl"))


module 
using .Types

export obtain
export AbstractMolecularContainer, Atom
end