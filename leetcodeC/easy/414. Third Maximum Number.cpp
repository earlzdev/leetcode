#include <vector>

using namespace std;

class Solution {
public:
    int thirdMax(vector<int>& nums) {
        sort(nums.begin(), nums.end());
        auto last = unique(nums.begin(), nums.end());
        nums.erase(last, nums.end());
        reverse(nums.begin(), nums.end());
        if (nums.size() < 3) {
            return *max_element(nums.begin(), nums.end());
        }
        return nums[2];
    }
};