#include <string>
#include <vector>
#include <iostream>

using namespace std;

class Solution {
public:
    vector<string> findRestaurant(vector<string>& list1, vector<string>& list2) {
        vector<string> res;
        int max = list1.size() + list2.size() - 2;
        for (int i = 0; i < list1.size(); i++) {
            string temp = list1[i];
            for (int j = 0; j < list2.size(); j++) {
                string temp2 = list2[j];
                if (temp2 == temp && (i + j) < max) {
                    res.clear();
                    max = i + j;
                    res.push_back(temp2);
                } else if (temp2 == temp && (i + j) == max) {
                    max = i + j;
                    res.push_back(temp2);
                }
            }
        }
        return res;
    }
};