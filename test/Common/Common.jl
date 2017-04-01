module Common
using Base.Test

include("test_comparison.jl")
include("test_obtain.jl")
include("test_constructor.jl")

export test_constructor
export test_obtain
export test_comnparison

end