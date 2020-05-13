#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,k,q,a;cin>>n>>k>>q;
  vector<int> v(n,k-q);
  rep(i,q) {
    cin>>a;
    v[a-1]+=1;
  }
  rep(i,n) cout << (v[i]<1 ? "No" : "Yes") << endl;
}