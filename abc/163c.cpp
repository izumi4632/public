#include <bits/stdc++.h>
using namespace std;
int main () {
    int n,k;cin >> n;
    vector<int> t(n,0);
    for (int i = 0; i < n-1; i++)
    {
        cin >> k;
        t[k-1]+=1;
    }
    for (int j = 0; j < n; j++)
    {
        cout << t[j] <<endl;
    }
    
}