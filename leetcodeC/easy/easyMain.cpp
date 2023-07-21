#include <iostream>
#include "500. Keyboard Row.cpp"
#include "521. Longest Uncommon Subsequence I.cpp"
#include "557. Reverse Words in a String III.cpp"

using namespace std;

int main(void) 
{
    ReverseWordsInAStringIII reverseWordsInAStringIII = ReverseWordsInAStringIII();
    string res = reverseWordsInAStringIII.reverseWords("Let's take LeetCode contest");
    cout << res << endl;
    return 0;
}