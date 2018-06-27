#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <set>
#include <map>
#include <algorithm>
using namespace std;

int main() {
    map<string, int>m;
    int n, t, x;
    string s;
    for (cin >> n; n--;) {
        cin >> t >> s;
        if (t == 1) {
            cin >> x, m[s] += x;
        } else if (t == 2) {
            m.erase(s);
        } else if (t == 3) {
            cout << m[s] << endl;
        }
    }
    return 0;
}
