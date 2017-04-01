import Base.==

"""
Define the meaning of "==" operator
"""
function =={T<:AbstractMolecularContainer}(atom1::T, atom2::T)
    tol = 1e-5 # tolerance for floating point number comparison

    for field in fieldnames(atom1)
        value1 = getfield(atom1, field)
        value2 = getfield(atom2, field)

        if issubtype(typeof(value1), AbstractFloat)
            if abs(value1 - value2) > tol
                return false
            end

        elseif issubtype(typeof(value1), AbstractArray)
            if length(value1) != length(value2)
                return false
            end

            for i = 1:length(value1)
                if issubtype(typeof(value1[i]), AbstractFloat)
                    if abs(value1[i] - value2[i]) > tol
                        return false
                    else
                        continue
                    end
                else
                    if value1[i] != value2[i]
                        return false
                    else
                        continue
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
