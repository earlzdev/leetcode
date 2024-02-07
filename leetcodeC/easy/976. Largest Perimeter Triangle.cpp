#include <vector>

using namespace std;

class LargestPerimeterTriangle {
public:
    int largestPerimeter(vector<int>& nums) {
        int res = 0;

        sort(nums.begin(), nums.end());
        reverse(begin(nums), end(nums));

        for (int i = 0; i < nums.size() - 2; i++) {
            if (
                nums[i] + nums[i + 1] > nums[i + 2]
                && nums[i + 1] + nums[i + 2] > nums[i]
                && nums[i + 2] + nums[i] > nums[i + 1]
            ) {
                res = nums[i] + nums[i + 1] + nums[i + 2];
                break;
            }
        }

        return res;
    }
};