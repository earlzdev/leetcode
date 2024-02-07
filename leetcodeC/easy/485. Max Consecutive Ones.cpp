#include <vector>

using namespace std;

class Solution {
public:
    int findMaxConsecutiveOnes(vector<int>& nums) {
        int counter = 0;
        int next = 0;
        if (find(nums.begin(), nums.end(), 0) == nums.end()) {
            return nums.size();
        }
        for (int i = 0; i < nums.size(); i++) {
            int maxCounter = 0;
            if (nums[i] == 1 && i >= next) {
                for (int j = i; j < nums.size(); j++) {
                    if (nums[j] == 1) {
                        maxCounter++;
                    }
                    if (nums[j] == 0 || j == nums.size() - 1) {
                        if (counter < maxCounter) {
                            counter = maxCounter;
                        }
                        next = j;
                        break;
                    }
                }
            }
            maxCounter = 0;
        }
        return counter;
    }
};