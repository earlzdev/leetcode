#include <vector>

using namespace std;

class SortArrayByParityII {
public:
    vector<int> sortArrayByParityII(vector<int>& nums) {
        vector<int> res;
        vector<int> odd;
        vector<int> even;
        for (auto i : nums) {
            if (i % 2 == 0) {
                even.push_back(i);
            } else {
                odd.push_back(i);
            }
        }
        for (int i = 0; i < nums.size(); i++) {
            if (i % 2 == 0) {
                int first = even[0];
                even.erase(even.begin());
                res.push_back(first);
            } else {
                int first = odd[0];
                odd.erase(odd.begin());
                res.push_back(first);
            }
        }
        return res;
    }
};