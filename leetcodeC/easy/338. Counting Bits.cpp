#include <vector>
#include <bitset>
#include <iostream>

using namespace std;

class CountingBits {
public:
    vector<int> countBits(int n) {
        vector<int> ans;
        for (int i = 0; i < n + 1; i++) {
            bitset<sizeof(int) * 8> bits(i);
            string bs = bits.to_string();
            int count = 0;
            for (auto k : bs) {
                if (k == '1') {
                    count++;
                }
            }
            ans.push_back(count);
        }
        return ans;
    }
};