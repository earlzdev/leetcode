#include <vector>

using namespace std;

// Definition for a binary tree node.
struct TreeNode {
     int val;
     TreeNode *left;
     TreeNode *right;
     TreeNode() : val(0), left(nullptr), right(nullptr) {}
     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class TwoSumIVInputIsABST {
public:

    vector<int> arr;
    bool res = false;

    bool findTarget(TreeNode* root, int k) {
        if (res) {
            return true;
        }
        arr.push_back(root->val);
        if (root->left != NULL) {
            for (auto i : arr) {
                if (i + root->left->val == k) {
                    res = true;
                }
            }
            findTarget(root->left, k);
        } 
        if (root->right != NULL) {
            for (auto i : arr) {
                if (i + root->right->val == k) {
                    res = true;
                }
            }
            findTarget(root->right, k);
        }
        return res;
    }
};