#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <unordered_set>
using namespace std;

int main() {
    const int x = 10000;
    int N, S, P, Q, i = 1;
    scanf("%d%d%d%d", &N, &S, &P, &Q);
    unordered_set<int>se = {S};
    for (; i < min(N,x); i++) {
        S = ((long long)S * P + Q) % 0x80000000;
        if (se.find(S) != se.end()) {
            break;
        }
        se.insert(S);
    }
    printf("%d\n", i == x ? N : i);
    return 0;
}
