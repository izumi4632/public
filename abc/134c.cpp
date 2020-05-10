#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin >> n;
  vector<int> a(n,0);
  rep(i,n){cin >> a[i];}
  vector<int> v=a;
  sort(a.rbegin(), a.rend());
  rep(i,n){v[i]==a[0] ? cout << a[1] << endl : cout << a[0] << endl;}
}