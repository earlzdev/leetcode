#include <iostream>
#include <string>

using namespace std;

class RobotReturnToOrigin {
public:
    bool judgeCircle(string moves) {
        int upCounter = 0;
        int downCounter = 0;
        int leftCounter = 0;
        int rightCounter = 0;
        for (char c : moves) {
            if (c == 'U') {
                upCounter++;
            } else if (c == 'D') {
                downCounter++;
            } else if (c == 'R') {
                rightCounter++;
            } else if (c == 'L') {
                leftCounter++;
            }
        }
        return upCounter == downCounter && leftCounter == rightCounter;
    }
};