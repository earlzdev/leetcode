#include <string>

using namespace std;

class RotateString {
public:
    bool rotateString(string s, string goal) {
        for (int i = 0; i < s.length(); i++) {
            char first_char = s[0];
            s.erase(0, 1);
            s += first_char;
            if (s == goal) {
                return true;
                break;
            }
        }
        return false;
    }
};