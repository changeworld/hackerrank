#include<bits/stdc++.h>
using namespace std;

//Define the structs Workshops and Available_Workshops.
//Implement the functions initialize and CalculateMaxWorkshops
typedef pair<int, int> pii;
typedef vector<pii> Available_Workshops;

Available_Workshops* initialize(int *start_time, int *duration, int n) {
    auto a = new Available_Workshops(n);
    for (int i = 0; i < n; i++) {
        a->at(i).first = start_time[i], a->at(i).second = start_time[i] + duration[i];
    }
    return a;
}

int CalculateMaxWorkshops(Available_Workshops* data) {
    sort(data->begin(), data->end(), [](const pii &a, const pii &b) {
        return a.second<b.second;
    });
    int n = 0, m = 0;
    for(int i = 0; i < data->size(); i++) {
        if(data->at(i).first >= n) {
            m++;
            n = data->at(i).second;
        }
    }
    return m;
}

int main(int argc, char *argv[]) {
    int n; // number of workshops
    cin >> n;
    // create arrays of unknown size n
    int* start_time = new int[n];
    int* duration = new int[n];

    for(int i = 0; i < n; i++) {
        cin >> start_time[i];
    }
    for(int i = 0; i < n; i++) {
        cin >> duration[i];
    }

    Available_Workshops * ptr;
    ptr = initialize(start_time,duration, n);
    cout << CalculateMaxWorkshops(ptr) << endl;
    return 0;
}
