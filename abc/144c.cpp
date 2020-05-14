#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin >> n;
  int ans=n;
  for(int i=1;i*i<=n;i++) ans =(n%i!=0 ? ans : min(ans,i+n/i-2));
  cout << ans << endl;
}