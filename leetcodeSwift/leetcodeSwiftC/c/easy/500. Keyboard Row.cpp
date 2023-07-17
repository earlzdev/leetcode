//#include <string>
//#include <iostream>
//#include <vector>
//#include <unordered_set>
//
//class KeyboardRow
//{
//public:
//    std::vector<std::string> findWords(std::vector<std::string>& words)
//    {
//        std::unordered_set<char> firstRow {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'};
//        std::unordered_set<char> secondRow {'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'};
//        std::unordered_set<char> thirdRow {'z', 'x', 'c', 'v', 'b', 'n', 'm'};
//        std::vector<std::string> readyArr;
//
//        for (const std::string& word : words) {
//            std::string temp = word;
//            std::transform(temp.begin(), temp.end(), temp.begin(), ::tolower);
//
//            bool isInFirstRow = std::all_of(temp.begin(), temp.end(), [&](char c) {
//                return firstRow.find(c) != firstRow.end();
//            });
//
//            bool isInSecondRow = std::all_of(temp.begin(), temp.end(), [&](char c) {
//                return secondRow.find(c) != secondRow.end();
//            });
//
//            bool isInThirdRow = std::all_of(temp.begin(), temp.end(), [&](char c) {
//                return thirdRow.find(c) != thirdRow.end();
//            });
//
//            if (isInFirstRow || isInSecondRow || isInThirdRow) {
//                readyArr.push_back(word);
//            }
//        }
//                
//        return readyArr;
//    }
//};
