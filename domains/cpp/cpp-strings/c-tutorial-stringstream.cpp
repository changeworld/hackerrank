#include <sstream>
#include <vector>
#include <iostream>
using namespace std;

int main() {
    int n;
    for (; ~(n = getchar());) {
        putchar(n == 44? 10 : n);
    }
    return 0;
}
