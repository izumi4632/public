//だめなやつ
#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,m,x,mini;cin >> n >> m >> x;
  vector<vector<int>> l(n,vector<int>(m,0));
  rep(i,n){rep(j,m){cin >> l[n][m];}}

  vector<vector<int>> suml(2^n,vector<int>(m+1,0));
  rep(i,n^2){rep(j,m){if(i&(1<<j)){
    rep(k,m+1){
      suml[i][k]+=l[j][k];
    }
  }}}
  mini=1e8;
  rep(i,n^2){
    bool flag=true;
    rep(j,m){
      if (suml[i][j+1] < x){flag=false;}
    }
    if(flag==true){mini=min(mini,suml[i][0]);}
  }
  if(mini==1e8){cout<<-1;}
  else{cout<<mini;}
}