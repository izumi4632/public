#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define ALL(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,b;cin >> n;
  vector<int> a(n,0);
  rep(i,n){
    cin >> b;
    a[b-1]=i+1;
  }
  rep(i,n-1){cout << a[i] << " ";}
  cout << a[n-1] << endl;
}