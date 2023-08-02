#include <string>
#include <vector>
#include <set>

using namespace std;

class UniqueMorseCodeWords {
public:
    int uniqueMorseRepresentations(vector<string>& words) {
        vector<string> arr;
        vector<string> morseArr = [] { return vector<string>{".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."}; }();
        vector<string> rArr;
        for (int i = 0; i < words.size(); i++) {
            string temp = words[i];
            string m = "";
            for (char t : temp) {
                int number = toupper(t) - 'A' + 1;
                m += morseArr[number - 1];
            }
            rArr.push_back(m);
        }
        set<string> mySet(rArr.begin(), rArr.end());
        return mySet.size();
    }
};