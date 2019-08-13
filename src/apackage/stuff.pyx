# cython wrapper for libstuff
cimport cstuff

def do_fast_stuff(a, b):
    return int(cstuff.doFastStuff(int(a), int(b)))
