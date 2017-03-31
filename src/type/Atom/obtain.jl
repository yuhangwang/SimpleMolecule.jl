using SimpleMolecule.Types.Atom


"""
A getter function for objects of type ``Atom``.
It also provides information not physically stored in the ``Atom`` object
by standardized by the design of ``Atom``.

Arguments
----------
obj:Atom
    a Atom object 

field:Symbol
    the requested field name
"""
function obtain(obj::Atom, field::Symbol)
    if field in fieldnames(obj)
        return getfield(obj, field)
    else
        return nothing
    end
end
