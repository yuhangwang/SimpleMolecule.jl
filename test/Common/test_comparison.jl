import SimpleMolecule.AbstractMolecularContainer


"""
A test for the comparison operator "==" between 
two objects of type AbstractMolecularContainer.

Arguments
----------
obj1:AbstractMolecularContainer
    An instance of type AbstractMolecularContainer.

obj2:AbstractMolecularContainer
    Another instance of type AbstractMolecularContainer.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison{T<:AbstractMolecularContainer}(
    obj1::T,
    obj2::T,
    solution::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==()\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == solution 

    print_with_color(:green, "\nVERIFIED! ==()\n")
    println("----------------------------------------\n\n")

    return true
end
