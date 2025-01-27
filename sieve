const int N=1e6+100;
 
vector <ll> spf(N+N);
void sieve(ll MAXN){
    spf[1] = 1;
    for (int i=2; i<MAXN; i++){
        spf[i] = i;
    }
    for (int i=4; i<MAXN; i+=2){
        spf[i] = 2;
    }
    for (int i=3; i*i<MAXN; i+=2){
        if(spf[i] == i){
            for (int j=i*i; j<MAXN; j+=i){
                if(spf[j]==j){
                    spf[j] = i;
                }
            }
        }
    }
}
