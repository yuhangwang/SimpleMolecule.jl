import Base.==
using SimpleMolecule.Types.Atom


"""
Define the meaning of "==" operator for type Atom 

Arguments 
----------
atom1:Atom 
    An instance of type Atom.

atom2:Atom 
    Another instance of type Atom.
"""
function ==(atom1::Atom, atom2::Atom)
    tol = 1e-5 # tolerance for floating point number comparison

    for field in fieldnames(atom1)
        println(field)
        value1 = getfield(atom1, field)
        value2 = getfield(atom2, field)

        if issubtype(typeof(value1), AbstractFloat)
            if abs(value1 - value2) > tol
                return false
            end

        elseif field == :coordinate 
            if length(value1) != length(value2)
                return false
            end

            for i = 1:length(value1)
                for j = 1:length(value1[i])
                    if abs(value1[i][j] - value2[i][j]) > tol 
                        return false 
                    end
                end
            end

            return true

        else
            if value1 != value2
                return false
            end

        end
    end

    return true
end
