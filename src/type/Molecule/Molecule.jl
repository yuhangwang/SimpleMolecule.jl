import ..Abstract.AbstractMolecularContainer


type Molecule <: AbstractMolecularContainer
    atoms::Array{Atom,1}
end

include("constructor.jl")