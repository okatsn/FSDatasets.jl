"""
Try to parse `str` into `Int`.
"""
tryparseint(str) = try
    parse(Int, str)
catch e
    str
end

"""
A combo of `tryparseint` and `split`.
The output is ensured to be a two-element vector that the first one `<:AbstractString` and the second `<:Int`.
"""
function splitnamenumber(str, deli)
    name_num = tryparseint.(split(str, deli))
    @assert length(name_num) == 2
    @assert isa(name_num[1], AbstractString)
    @assert isa(name_num[2], Int)
    return name_num
end