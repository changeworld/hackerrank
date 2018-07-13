#include <iostream>
#include <deque>
using namespace std;

void printKMax(int arr[], int n, int k) {
    deque<int> d;
    for(int i = 0; i < n; i++) {
        for(; !d.empty() && arr[i] > d.back();) {
            d.pop_back();
        }
        d.push_back(arr[i]);
        if(i >= k && d.front() == arr[i-k]) {
            d.pop_front();
        }
        if(i >= k-1) {
            printf(i < n - 1 ? "%d ":"%d\n", d.front());
        }
    }
}

int main() {
    int t;
    cin >> t;
    while(t > 0) {
        int n, k;
        cin >> n >> k;
        int i;
        int arr[n];
        for(i = 0; i < n; i++) {
              cin >> arr[i];
        }
        printKMax(arr, n, k);
        t--;
    }
    return 0;
}
