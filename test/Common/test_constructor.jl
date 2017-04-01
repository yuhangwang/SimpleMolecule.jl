import SimpleMolecule.AbstractMolecularContainer


"""
A test for constructor_1 for ``Atom``.

Arguments
----------
typeConstructor:Function
    constructor

props:Dict
    property dictionary

solution:Atom 
    answer key
"""
function test_constructor{T<:AbstractMolecularContainer}(
    typeConstructor,
    props::Dict,
    solution::T)
    println("-------------------------------------------------")
    print_with_color(:blue, "Test constructor 1 for Atom\n\n")

    answer = typeConstructor(; props...)

    for field in fieldnames(solution)
        if obtain(answer, field) != obtain(solution, field)
            println("field: ", field)
            println("\tanswer ", obtain(answer, field))
            println("\tsolution ", obtain(solution, field))
            @test false
        end
    end

    print_with_color(:green, "VERIFIED! constructor 1 for Atom\n\n")
    println("-------------------------------------------------")

    return true 
end

