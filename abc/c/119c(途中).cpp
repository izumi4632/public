#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,a,b,c;cin>>n,a,b,c;
  vector<int> v(n,0);
  rep(i,n) cin>>v[i];
  rep(bit,1<<n) {
    int sum_v=0;
    rep(i,i<n) if((bit>>i)&1) sum_v+=v[i];
    abs(sum_v)
    ans=min(sum_v,ans)
  }
}