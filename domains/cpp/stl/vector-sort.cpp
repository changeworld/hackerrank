#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n;
    scanf("%d", &n);
    std::vector<int>v(n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &v[i]);
    }
    std::sort(v.begin(), v.end());
    for (int i = 0; i < n; i++) {
        printf(i < n - 1 ? "%d ":"%d\n", v[i]);
    }
    return 0;
}
