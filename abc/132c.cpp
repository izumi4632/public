#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define ALL(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n;
  cin >> n;
  vector<int> v(n,0);
  rep(i,n){
    cin >> v[i];
  }
  sort(ALL(v));
  cout<< v[n/2]-v[n/2-1] << endl;
}