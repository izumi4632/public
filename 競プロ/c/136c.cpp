#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin >> n;
  vector<int> a(n+1,0);rep(i,n) cin>>a[i+1];
  bool ans=true;
  fo(i,1,n+1){
    if (a[i-1]<a[i]) a[i]-=1;
    else if (a[i-1]>a[i]) ans=false;
  }
  cout << (ans ? "Yes" : "No") << endl;
}