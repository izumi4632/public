#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n;cin >> n;
  vector<int> b(n-1,0);
  rep(i,n-1) cin>>b[i];
  int ans=b[0]+b[n-2];
  fo(i,1,n-1) ans+=min(b[i-1],b[i]);
  cout << ans << endl;
}