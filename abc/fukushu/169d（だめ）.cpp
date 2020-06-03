#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
signed main () {
  int n;cin>>n;
  int ans=0;
  int k=1;
  if (n==1){cout<<0;return 0;}
  while (n!=1) {
    fo(i,k+1,n+1){
      if(n%i==0){
        ans+=1;
        n=n/i;
        k=i;
        break;
      }
      else if (k==n) {
        return 0;
      }
    }
  }
  cout<<ans;
}