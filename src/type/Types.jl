module Types 
    include(joinpath("type", "abstract", "AbstractMolecularContainer.jl"))
    include(joinpath("type", "Atom", "Atom.jl"))

    
    export AbstractMolecularContainer, Atom
    export obtain
end