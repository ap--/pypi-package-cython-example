# cython headers for libstuff
cdef extern from "libstuff.hpp" namespace "stuff":
    int doFastStuff(int, int)
