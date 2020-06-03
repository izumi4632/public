#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin>>n;
  vector<int> v(n,0);
  int ans=1;
  rep(i,n) {
    cin>>v[i];
    if (v[i]==0) {cout<<0; return 0;}
  }
  rep(i,n){
    ans*=v[i];
    if (ans>1000000000000000000) {cout<<-1;return 0;}
  }
  cout << ans << endl;
}
