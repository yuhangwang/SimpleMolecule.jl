import ..Common.test_constructor


function run_test_constructor()
    test_constructor(
        Dict(
            :atoms => [Atom(index=10)]
        ),
        Molecule([Atom(index=10)])
    )
end