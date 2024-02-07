#include <vector>
#include <string>

using namespace std;

class UniqueEmailAdresses {
    public:
    int numUniqueEmails(vector<string>& emails) {
        vector<string> ready;

        for (int i = 0; i < emails.size(); i++) {

            string email = emails[i];
            size_t pos = email.find("@");
            string domain = email.substr(pos + 1);
            string local = email.substr(0, pos);
            string trulyLocal;

            // local
            size_t plusPos = local.find("+");
            if (plusPos != string::npos) {
                trulyLocal = local.substr(0, plusPos);   
            } else {
                trulyLocal = local;
            }
            trulyLocal.erase(remove(trulyLocal.begin(), trulyLocal.end(), '.'), trulyLocal.end());

            // ready
            string readyEmail = trulyLocal + "@" + domain;
            ready.push_back(readyEmail);
        };

        sort(ready.begin(), ready.end());
        ready.erase(unique(ready.begin(), ready.end()), ready.end());

        return ready.size();
    }
};