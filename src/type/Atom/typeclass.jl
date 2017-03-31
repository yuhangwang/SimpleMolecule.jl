using Typeclass
import MolecularContainer
@instance MolecularContainer Atom begin
    include("obtain.jl")
    include("comparison.jl")
    include("clone.jl")
end
