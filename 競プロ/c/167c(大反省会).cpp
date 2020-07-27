#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
signed main () {
  int n,m,x;cin>>n>>m>>x;
  vector<vector<int>> v(n,vector<int>(m+1,0));
  rep(i,n) rep(j,m+1) cin>>v[i][j];
  int ans=INT_MAX;
  rep(bit,1<<n){
    bool check_bit=true;
    fo(j,1,m+1){
      int sum_j=0;
      rep(i,n) if((bit>>i)&1) sum_j+=v[i][j];
      if(sum_j<x) check_bit=false;
    }
    if(check_bit){
      int sum_c=0;
      rep(i,n) if((bit>>i)&1) sum_c+=v[i][0];
      ans=min(ans,sum_c);
    }
  }
  cout<< ((ans==INT_MAX) ? -1 : ans);
}