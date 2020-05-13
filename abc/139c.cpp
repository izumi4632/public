#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n;cin >> n;
  vector<int> v(n,0);
  rep(i,n) cin>>v[i];
  int ans=0;
  int temp=0;
  rep(i,n-1){
    if(v[i]>=v[i+1]) temp+=1;
    else temp=0;
    ans=max(ans,temp);
  }
  cout << ans << endl;
}