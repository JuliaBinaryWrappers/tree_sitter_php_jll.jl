# Autogenerated wrapper script for tree_sitter_php_jll for i686-linux-musl-cxx03
export libtreesitter_php

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libtreesitter_php`
const libtreesitter_php_splitpath = ["lib", "libtreesitter_php.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_php_path = ""

# libtreesitter_php-specific global declaration
# This will be filled out by __init__()
libtreesitter_php_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_php = "libtreesitter_php.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_php")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_php_path = normpath(joinpath(artifact_dir, libtreesitter_php_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_php_handle = dlopen(libtreesitter_php_path)
    push!(LIBPATH_list, dirname(libtreesitter_php_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

