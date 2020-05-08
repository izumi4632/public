#include <bits/stdc++.h>
#define rep(i,n) for (int i=0; i < (int)(n); i++)
using namespace std;
int main () {
  int n;cin >> n;
  vector<float> v(n,0);
  rep(i,n){
    cin >> v[i];
  }
  sort(v.begin(),v.end());
  rep(i,n-1){
    v[i+1]=(v[i]+v[i+1])/2;
  }
  cout << v[n-1] << endl;
}