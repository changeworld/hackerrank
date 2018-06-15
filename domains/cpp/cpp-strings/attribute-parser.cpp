#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, q;
    cin >> n >> q;
    cin.ignore();
    map <string, string> attributes;
    string str, tags = "";
    for (int i = 0; i < n; i++) {
        getline(cin, str);
        stringstream ss(str);
        string word, attribute, value;
        size_t pos;
        while (getline(ss, word, ' ')) {
            if (word[0] == '<') {
                string tag;
                if (word[1] == '/') {
                    tag = word.substr(2);
                    tag = tag.substr(0, tag.length() - 1);
                    pos = tags.find("." + tag);
                    if (pos == string::npos) {
                        tags = "";
                    } else {
                        tags = tags.substr(0, pos);
                    }
                } else {
                    tag = word.substr(1);
                    if (tag.find(">") != string::npos) {
                        tag = tag.substr(0, tag.length() - 1);
                    }
                    if (tags=="") {
                        tags = tag;
                    } else {
                        tags = tags + "." + tag;
                    }
                }
            } else if (word[0] == '"') {
                pos = word.find_last_of('"');
                value = word.substr(1, pos - 1);
                attributes[attribute] = value;
            } else if (word[0] != '=') {
                attribute = tags + "~" + word;
            }
        }
    }
    for (int i = 0; i < q; i++) {
        getline(cin,str);
        if (attributes.find(str) == attributes.end()) {
            cout << "Not Found!" << endl;
        } else {
            cout << attributes[str] << endl;
        }
    }
}
