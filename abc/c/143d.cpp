#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n;cin >> n;
  vector<int> v(n,0);rep(i,n) cin>>v[i];
  sort(v.begin(),v.end());
  int ans=0;
  rep(i,n-2) fo(j,i+1,n-1) ans+=lower_bound(v.begin(),v.end(),v[i]+v[j])-v.begin()-j-1;
  cout << ans << endl;
}