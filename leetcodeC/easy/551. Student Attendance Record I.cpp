#include <iostream>
#include <string>
#include <vector>

using namespace std;

class StudentAttendanceRecord {
public:
    bool checkRecord(string s) {
        vector<string> arr;
        int aCounter = 0;
        bool res = false;
        for (char i : s) {
            arr.push_back(string(1 , i));
        }
        for (int i = 0; i < arr.size(); i++) {
            string c = arr[i];
            if (c == "A") {
                aCounter++;
            }
        }
        string wasLate = "LLL";
        size_t found = s.find(wasLate);
        if (found == string::npos && aCounter < 2) {
            res = true;
        }
        return res;
    }
};