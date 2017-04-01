import ..Common.test_constructor


function run_test_constructor()
    test_constructor(
        Dict(
            :index => 1,
            :atom_name => "A",
            :residue_name => "RES1",
            :residue_id => 1,
            :segment_name => "SEG1",
            :chain_name => "C",
            :system_name => "S",
            :coordinate => [0., 1., 0.]
        ),

        Atom(;
            index=1,
            residue_name="RES1",
            residue_id=1, 
            segment_name="SEG1",
            chain_name="C",
            system_name="S",
            atom_name="A",
            coordinate=[0., 1., 0.]
        )
    )
end