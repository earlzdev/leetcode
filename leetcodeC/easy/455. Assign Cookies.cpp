#include <vector>

using namespace std;

class AssignCookies {
public:
    int findContentChildren(vector<int>& g, vector<int>& s) {
        int res = 0;
        sort(s.begin(), s.end());
        sort(g.begin(), g.end());
        for (int i = 0; i < g.size(); i++) {
            for (int j = 0; j < s.size(); j++) {
                if (s[j] >= g[i]) {
                    res += 1;
                    s.erase(s.begin() + j);
                    break;
                }
            }
        }
        return res;
    }
};