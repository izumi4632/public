#include <bits/stdc++.h>
using namespace std;
int gcd_core(int a, int b) {
  if (b == 0) { return a; }
  else { return gcd_core(b, a % b); } }
int main () {
  long long ans = 0;
  int a;
  cin >> a;
  for (int i = 1; i <= a; i++) {
    for (int j = 1; j <= a; j++) {
      for (int k = 1; k <= a; k++) {
        ans += gcd(gcd(i, j), k);
      }
    }
  }
  cout << ans << endl;
}