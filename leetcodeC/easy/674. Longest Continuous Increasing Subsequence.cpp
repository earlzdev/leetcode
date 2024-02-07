#include <vector>

using namespace std;

class LongestContinuousIncresingSubsuquence {
public:
    int findLengthOfLCIS(vector<int>& nums) {
        int counter = 0;
        for (int i = 0; i < nums.size() - 1; i++) {
            if (nums[i + 1] > nums[i]) {
                vector<int> temp;
                temp.push_back(nums[i]);
                for (int j = i; j < nums.size() - 1; j++) {
                    if (nums[j + 1] > nums[j]) {
                        temp.push_back(nums[j]);
                    } else {
                        break;
                    }
                }
                if (temp.size() > counter) {
                    counter = temp.size();
                }
            }
        }
        if (counter == 0 && nums.size() != 0) {
            return 1;
        }
        return counter;
    }
};