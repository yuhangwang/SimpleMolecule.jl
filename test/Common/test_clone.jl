import SimpleMolecule.AbstractMolecularContainer
import SimpleMolecule.clone


function test_clone{T<:AbstractMolecularContainer}(
    x::T,
    new_props::Dict,
    solution::T,
    msg::AbstractString=""
    )
    println("----------------------------------------")
    print_with_color(:blue, "Test clone()\n\n")

    if msg != ""
        print_with_color(:blue, msg * "\n")
    end

    answer = clone(x, new_props)

    @test answer == solution 

    print_with_color(:green, "\nVERIFIED! clone()\n")
    println("----------------------------------------\n\n")
end
