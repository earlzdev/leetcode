#include <iostream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

class ReverseWordsInAStringIII {
public:
    string reverseWords(string s) {
        vector<string> chunked;
        stringstream ss(s);
        string word;
        string result;
        while (ss >> word) {
            chunked.push_back(word);
        }
        for (int i = 0; i < chunked.size(); i++) {
            reverse(chunked[i].begin(), chunked[i].end());
        }
        for (size_t i = 0; i < chunked.size(); i++) {
            result += chunked[i];
            if (i != chunked.size() - 1) {
                result += " ";
            }
        }
        return result;
    }
};