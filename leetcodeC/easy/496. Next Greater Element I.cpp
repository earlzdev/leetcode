#include <vector>

using namespace std;

class NextGreaterElementI {
public:
    vector<int> nextGreaterElement(vector<int>& nums1, vector<int>& nums2) {
        vector<int> res;
        for (int i = 0; i < nums1.size(); i++) {
            auto temp = find(nums2.begin(), nums2.end(), nums1[i]);
            if (temp != nums2.end()) {
                int index = distance(nums2.begin(), temp);
                if (index == nums2.size() - 1) {
                    res.push_back(-1);
                } else {
                    for (int j = index; j < nums2.size(); j++) {
                        if (nums2[j] > nums1[i]) {
                            res.push_back(nums2[j]);
                            break;
                        }
                        if (j == nums2.size() - 1) {
                            res.push_back(-1);
                        }
                    }
                }
            }
        }
        return res;
    }
};