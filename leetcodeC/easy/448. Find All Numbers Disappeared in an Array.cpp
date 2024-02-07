#include <vector>

using namespace std;

class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int>& nums) {
        vector<int> result;
        sort(nums.begin(), nums.end());
        for (int i = 1; i < nums.size() + 1; i++) {
            auto temp = binary_search(nums.begin(), nums.end(), i);
            if (temp == false) {
                result.push_back(i);
            }
        }
        return result;
    }
};