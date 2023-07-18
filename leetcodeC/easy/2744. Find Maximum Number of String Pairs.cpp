#include <iostream>
#include <vector>
#include <string>

using namespace std;

class FindMaxNumberOfStringPairs {
public:
    int maximumNumberOfStringPairs(vector<string>& words) {
        int counter = 0;
        for (int i = 0; i < words.size(); i++) {
            string temp = words[i];
            string rev = temp;
            reverse(rev.begin(), rev.end());
            for (int j = i + 1; j < words.size(); j++) {
                if (words[j] == rev) {
                    counter++;
                    break;
                }
            }
        }
        return counter;
    }
};