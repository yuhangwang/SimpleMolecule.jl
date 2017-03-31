import SimpleMolecule.Abstract.AbstractMolecularContainer


"""
A ``Atom`` (immutable) object stores all the information
about an atom. 
The coordinates are stored as a 2D matrix (N by 3),
which each row represents a trajectory frame and
each column represents one Cartesian dimension.
+--------------------+-------------------------+-----------------------------------+
| field              | type                    | note                              |
+====================+=========================+===================================+
| :atom_id           | Integer                 | atom ID                           |
+--------------------+-------------------------+-----------------------------------+
| :residue_name      | AbstractString          | residue name                      |
+--------------------+-------------------------+-----------------------------------+
| :residue_id        | Integer                 | residue ID                        |
+--------------------+-------------------------+-----------------------------------+
| :segment_name      | AbstractString          | segment name                      |
+--------------------+-------------------------+-----------------------------------+
| :chain_name        | AbstractString          | chain name                        |
+--------------------+-------------------------+-----------------------------------+
| :system_name       | AbstractString          | molecular system name             |
+--------------------+-------------------------+-----------------------------------+
| :atom_name         | AbstractString          | atom name (no extra spaces)       |
+--------------------+-------------------------+-----------------------------------+
| :atom_type         | AbstractString          | atom type                         |
+--------------------+-------------------------+-----------------------------------+
| :raw_atom_name     | AbstractString          | atom name with spaces preserved   |
+--------------------+-------------------------+-----------------------------------+
| :alt_location      | Char                    | alternative location              |
+--------------------+-------------------------+-----------------------------------+
| :insertion         | Char                    | insertion code                    |
+--------------------+-------------------------+-----------------------------------+
| :occupancy         | AbstractFloat           | atomic occupancy                  |
+--------------------+-------------------------+-----------------------------------+
| :beta              | AbstractFloat           | temperature factor                |
+--------------------+-------------------------+-----------------------------------+
| :element           | AbstractString          | chemical element                  |
+--------------------+-------------------------+-----------------------------------+
| :charge            | Integer                 | atomic charge                     |
+--------------------+-------------------------+-----------------------------------+
| :coordinate        | Array{AbstractFloat,1}  | atomic coordinate                 |
+--------------------+-------------------------+-----------------------------------+
| :topology          | TopologicAtom           | topological information           |
+--------------------+-------------------------+-----------------------------------+

"""

immutable Atom <: AbstractMolecularContainer
    index::Integer # sequential index
    raw_atom_name::AbstractString # preserving space characters
    atom_name::AbstractString # name without spaces
    atom_type::AbstractString # atom type name
    alt_location::Char # 17
    insertion::Char # 27
    occupancy::AbstractFloat # 55-60
    beta::AbstractFloat # 61-66
    element::AbstractString # 77-78
    charge::Integer # 79-80
    
    residue_name::AbstractString
    residue_id::Integer
    segment_name::AbstractString
    chain_name::AbstractString
    system_name::AbstractString

    coordinate::Array{Array{AbstractFloat,1}} 
end

# constructor with keyword arguments
include("constructor_0.jl")
include("clone.jl")
include("comparison.jl")
include("features.jl")
include("obtain.jl")

