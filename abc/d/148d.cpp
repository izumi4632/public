#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n;cin >> n;
  vector<int> a(n+1,0);rep(i,n) cin>>a[i];
  int ans=0;int want=1;
  rep(i,n+1){
    if(a[i]==want){want+=1;a[n]=-1;}
    else if(a[i]==0) ans=-1;
    else if(i!=n) ans+=1;
  }
  cout << ans << endl;
}