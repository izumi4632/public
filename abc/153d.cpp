#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i=0; i < (int)(n); i++)
#define fo(i,s,e) for (int i=(s); i < (e); i++)
#define all(obj) (obj).begin(), (obj).end()
#define int long long
int karakaru (int h){
  if(h==1) return 1;
  else return 2*karakaru(floor(h/2))+1;
}
signed main () {
  int n;cin >> n;
  cout << karakaru(n) << endl;
}