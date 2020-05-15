#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,m;cin >> n >> m;
  int L=0;int R=INT_MAX;
  rep(i,m){
    int l,r;cin>>l>>r;
    L=max(L,l);R=min(R,r);
  }
  cout << max(0,R-L+1) << endl;
}