#include <vector>
#include <string>

using namespace std;

class RelativeRanks {
public:
    vector<string> findRelativeRanks(vector<int>& score) {
        vector<string> res;
        vector<int> sorted = score;
        sort(sorted.begin(), sorted.end());
        reverse(sorted.begin(), sorted.end());
        for (int i = 0; i < score.size(); i++) {
            int temp = score[i];
            auto it = find(sorted.begin(), sorted.end(), temp);
            int found = distance(sorted.begin(), it);
            if (found == 0) {
                res.push_back("Gold Medal");
            } else if (found == 1) {
                res.push_back("Silver Medal");
            } else if (found == 2) {
                res.push_back("Bronze Medal");
            } else {
                res.push_back(to_string(found + 1));
            }
        }
        return res;
    }
};