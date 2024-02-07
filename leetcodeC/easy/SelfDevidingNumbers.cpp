#include <vector>
#include <string>

using namespace std;

class Solution {
public:
    vector<int> selfDividingNumbers(int left, int right) {
        vector<int> arr;
        for (int i = left; i <= right; i++) {
            string loop = to_string(i);
            int need = loop.size();
            vector<int> d;
            for (auto k : loop) {
                int n = k - '0';
                if (n == 0) {
                    continue;
                }
                if (i % n == 0) {
                    d.push_back(1);
                }
            }
            if (d.size() == need) {
                arr.push_back(i);
            }
        }
        return arr;
    }
};