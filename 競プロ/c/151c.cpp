#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
/*卍卍卍 #define int long long 卍卍卍*/
signed main () {
  int n,m;cin >> n >> m;
  vector<vector<int>> acwa_pena(n,vector<int>(2,0));
  rep(i,m){
    int no;
    string acwa;
    cin>>no>>acwa;
    if(acwa=="AC") acwa_pena[no-1][0]=1;
    else if(acwa_pena[no-1][0]==0) acwa_pena[no-1][1]+=1;
  }
  int ac=0;
  int pena=0;
  rep(i,n) {
    ac+=acwa_pena[i][0];
    if (acwa_pena[i][0]) pena+=acwa_pena[i][1];
  }
  cout << ac << " " << pena << endl;
}