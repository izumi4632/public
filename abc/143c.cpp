#include <bits/stdc++.h>
#define rep(i,n) for (int i=0; i < (int)(n); i++)
using namespace std;
int main () {
  int n;cin >> n;
  int ans =1;
  vector<char> s(n,0);
  rep(i,n){
    cin >> s[i];
  }
  rep(i,n-1){
    if (s[i]!=s[i+1])
    {
      ans+=1;
    }
  }
  cout << ans << endl;
}