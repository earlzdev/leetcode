#include <vector>

using namespace std;

class SetMismatch {
public:
    vector<int> findErrorNums(vector<int>& nums) {
        vector<int> res;
        int should;
        int twice;
        vector<int> arr = nums;
        for (int i = 1; i <= nums.size(); i++) {
            auto temp = find(arr.begin(), arr.end(), i);
            if (temp != arr.end()) {
                arr.erase(temp);
            } else {
                should = i;
            }
        }
        twice = arr[0];
        res.push_back(twice);
        res.push_back(should);
        return res;
    }
};