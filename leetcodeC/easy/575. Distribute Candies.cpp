#include <vector>
#include <set>

using namespace std;

class DistributeCandies {
public:
    int distributeCandies(vector<int>& candyType) {
        set<int> types(candyType.begin(), candyType.end());
        int res;
        if (candyType.size() / 2 > types.size()) {
            res = types.size();
        } else {
            res = candyType.size() / 2;
        }
        return res;
    }
};