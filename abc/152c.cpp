#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define ALL(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n,ans;
  cin >> n;
  int m=10000000000;
  ans=0;
  vector<int> v(n,1000);
  rep(i,n){
    cin >> v[i];
    m=min(m,v[i]);
    v[i] == m ? ans+=1 : 0;
  }
  cout << ans << endl;
}