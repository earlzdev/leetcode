#include <vector>

using namespace std;

class ReshapeTheMatrix {
public:
    vector<vector<int>> matrixReshape(vector<vector<int>>& mat, int r, int c) {
        vector<vector<int>> res;
        vector<int> vec1d;
        for_each(mat.begin(), mat.end(), [&](vector<int>& v) {
        vec1d.insert(vec1d.end(), v.begin(), v.end());
        });
        for (int i = 0; i < r; i++) {
            vector<int> temp;
            for (int j = 0; j < c; j++) {
                if (vec1d.size() != 0) {
                    temp.push_back(vec1d[0]);
                    vec1d.erase(vec1d.begin());
                } else {
                    return mat;
                }
            }
            res.push_back(temp);
        }
        if (vec1d.size() != 0) {
            return mat;
        }
        return res;
    }
};