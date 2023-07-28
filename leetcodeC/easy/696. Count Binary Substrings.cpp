#include <string>

using namespace std;

class Solution {
public:
    int countBinarySubstrings(string s) {
         int n = s.size();
        int count=0;
        int ones=0;
        int zeros=0;
        bool flag1 = false;
        bool flag2 = false;
        for(int i=0;i<n;i++)
        {
            if(s[i]=='1')
            {
                ones++;
                flag2 = true;
                if(flag1&&s[i+1]=='0')
                {
                    count = count + min(ones,zeros);
                    flag1 = false;
                    zeros = 0;
                }
            }
            if(s[i]=='0')
            {
                zeros++;
                flag1 = true;
                if(flag1&&s[i+1]=='1')
                {
                    count = count + min(ones,zeros);
                    flag2 = false;
                    ones = 0;
                }
            }
        }
        count = count + min(ones,zeros);
        return count;
    }
};