#define c_assert(e) ((e) ? (true) : \
    tst_debugging("%s,%d: assertion '%s' failed\n", \
    __FILE__, __LINE__, #e), false)
