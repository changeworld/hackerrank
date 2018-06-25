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
    for (int i=0;i<n;i++) {
        scanf("%d", &v[i]);
    }
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);
    v.erase(v.begin() + a - 1);
    v.erase(v.begin() + b - 1, v.begin() + c - 1);
    printf("%d\n", v.size());
    for (int i = 0; i < v.size(); i++) {
        printf(i < v.size() - 1? "%d ":"%d\n", v[i]);
    }
    return 0;
}
