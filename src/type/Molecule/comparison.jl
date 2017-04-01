import Base.==

"""
Define the meaning of "==" operator for type Molecule 

Arguments 
----------
x:Molecule
    one molecule
y:Molecule
    another molecule
"""
function ==(x::Molecule, y::Molecule)
    if length(x.atoms) != length(y.atoms)
        return false
    end

    for i = 1:length(x.atoms)
        if !(x.atoms[i] == y.atoms[i])
            return false
        end
    end
end
