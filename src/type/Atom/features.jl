using SimpleMolecule.Types.Atom


"""
Return a dictionary with the file names as keys and
field values as values.
"""
function features(x::Atom)
    Dict([(k, getfield(x, k)) for k in fieldnames(x)])
end
