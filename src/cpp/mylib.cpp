#include <cstdio>

extern "C" {
    __declspec(dllexport) void cpp_function() {
        printf("Hello from C++!\n");
        fflush(stdout);  // Ensure output is flushed
    }
}