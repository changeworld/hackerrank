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
    int t,x;
    for (scanf("%d", &t); t--;) {
        scanf("%d", &x);
        auto it = lower_bound(v.begin(), v.end(), x);
        printf(*it == x? "Yes %d\n":"No %d\n", distance(v.begin(), it) + 1);
    }
    return 0;
}
