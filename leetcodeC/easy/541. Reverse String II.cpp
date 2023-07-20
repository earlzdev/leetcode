#include <iostream>
#include <string>
#include <vector>
#include <numeric>

using namespace std;

class ReverseSrtingII {
public:
    string reverseStr(string s, int k) {
        if (k > s.length()) {
            std::reverse(s.begin(), s.end());
            return s;
        }
        vector<string> chunked;
        int startIndex = 0;
        while (startIndex < s.length()) {
            string sub = s.substr(startIndex, 2 * k);
            if (sub.length() < k) {
                reverse(sub.begin(), sub.end());
            } else {
                reverse(sub.begin(), sub.begin() + k);
            }
            chunked.push_back(sub);
            cout << sub << endl;
            startIndex += 2 * k;
        }
        string res = accumulate(chunked.begin(), chunked.end(), string());
        return res;
    }
};