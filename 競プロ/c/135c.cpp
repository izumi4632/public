#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin >> n;
  vector<int> a(n+1,0);rep(i,n+1) cin>>a[i];
  vector<int> b(n,0);rep(i,n) cin>>b[i];
  int ans=0;
  rep(i,n){
    if (a[i]>=b[i]) ans+=b[i];
    else if (b[i]>=a[i]+a[i+1]){ans+=a[i]+a[i+1];a[i+1]=0;}
    else {a[i+1]+=a[i]-b[i];ans+=b[i];}
  }
  cout << ans << endl;
}