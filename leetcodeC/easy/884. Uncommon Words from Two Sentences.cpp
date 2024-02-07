#include <vector>
#include <string>
#include <sstream>
#include <iostream>

using namespace std;

class UncommonWordsFromTwoSentences {
public:

    vector<string> uncommonFromSentences(string s1, string s2) {
        // s1 array
        vector<std::string> s1Arr;
        string s1Word;
        istringstream s1Stream(s1);
        while (getline(s1Stream, s1Word, ' ')) {
            s1Arr.push_back(s1Word);
        }

        // s2 array
        vector<std::string> s2Arr;
        string s2Word;
        istringstream s2Stream(s2);
        while (getline(s2Stream, s2Word, ' ')) {
            s2Arr.push_back(s2Word);
        }

        vector<string> res;

        // s1
        for (auto word : s1Arr) {
            int should = s2Arr.size();
            int actual = 0;
            int count = 0;
            for (auto w : s1Arr) {
                if (w == word) {
                    count++;
                }
            }
            if (count > 1) {
                continue;
            }
            for (auto word2 : s2Arr) {
                if (word == word2) {
                    break;
                } else {
                    actual++;
                }
            }

            if (should == actual) {
                res.push_back(word);
            }
        }
        
        // s2
        for (auto word : s2Arr) {
            int should = s1Arr.size();
            int actual = 0;
            int count = 0;
            for (auto w : s2Arr) {
                if (w == word) {
                    count++;
                }
            }
            if (count > 1) {
                continue;
            }
            for (auto word2 : s1Arr) {
                if (word == word2) {
                    break;
                } else {
                    actual++;
                }
            }

            if (should == actual) {
                res.push_back(word);
            }
        }
        return res;
    }
};