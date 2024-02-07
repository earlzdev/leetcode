#include <vector>

using namespace std;

class LargestSumAfterKNegations {
public:
    int largestSumAfterKNegations(vector<int>& nums, int k) {
        vector<int> res = nums;
        int sum = 0;
        sort(nums.begin(), nums.end());
        for (int i = 0; i < k; i++) {
            int n = nums[0];
            auto fi = find(res.begin(), res.end(), n);
            if (fi != res.end()) {
                int ind = fi - res.begin();
                res[ind] = n * -1;
            }
            nums[0] = nums[0] * -1;
            sort(nums.begin(), nums.end());
        }
        for (auto i : res) {
            sum += i;
        }
        return sum;
    }
};