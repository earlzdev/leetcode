#include <vector>

using namespace std;

class RelativeSortArray {
public:
    vector<int> relativeSortArray(vector<int>& arr1, vector<int>& arr2) {
        vector<int> ans;
        vector<int> end;
        for (auto i : arr2) {
            for (auto j : arr1) {
                if (j == i) {
                    ans.push_back(j);
                }
            }
        }
        for (auto i : arr1) {
            auto pos = find(arr2.begin(), arr2.end(), i);
            if (pos == arr2.end()) {
                end.push_back(i);
            }
        }
        sort(end.begin(), end.end());
        for (auto i : end) {
            ans.push_back(i);
        }
        return ans;
    }
};