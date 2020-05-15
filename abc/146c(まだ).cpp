//後でもう一回
#include <bits/stdc++.h>
using namespace std;
#define int long long
//https://qiita.com/hamko/items/794a92c456164dcc04ad
int nibu(int a,int b,int x){
  int ng=1e9,ok=0;
  while(ng-ok>1){
    int mid =(ng+ok)/2;
    (mid*a+b*floor(log10(mid)+1)<x ? ok : ng)=mid;}
  if(ok==0) return false;
  else return ok;}
signed main () {
  int a,b,x;cin>>a>>b>>x;
  cout << nibu(a,b,x) <<endl;
}