#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
using namespace std;

int main() {
    int n, m;
    vector<string> v = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    vector<string> w = {"even", "odd"};
    cin >> n >> m;
    for (; n <= m; n++) {
        cout << (n < 10? v[n] : w[n % 2]) << endl;
    }
}
