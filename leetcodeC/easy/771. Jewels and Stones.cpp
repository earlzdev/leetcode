#include <string>

using namespace std;

class JewelsAndStones {
public:
    int numJewelsInStones(string jewels, string stones) {
        int counter = 0;
        for (int i = 0; i < stones.length(); i++) {
            for (int j = 0; j < jewels.length(); j++) {
                if (stones[i] == jewels[j]) {
                    counter++;
                }
            }
        }
        return counter;
    }
};