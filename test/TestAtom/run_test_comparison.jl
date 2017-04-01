import ..Common.test_comparison


function run_test_comparison()
    test_comparison(Atom(atom_name="H1"), Atom(atom_name="H1"), true, "Compare :atom_name")
    test_comparison(Atom(atom_name="H1"), Atom(atom_name="H2"), false, "Compare :atom_name")
    test_comparison(Atom(coordinate=[1., 0., 0.]), Atom(coordinate=[1., 0., 0.]), true, "Compare :coordinate")
    test_comparison(Atom(coordinate=[1., 0., 0.001]), Atom(coordinate=[1., 0., 0.]), false, "Compare :coordinate")
end
