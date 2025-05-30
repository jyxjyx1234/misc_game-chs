#include <stdio.h>
void main() {
    int s = 0, i, m;
    for (m = 100; m < 300; m++) {
        for (i = 2; i <= m / 2; i++) {
            if (m % i == 0) {
                goto notPrime;
            }
        }
        s += m;
        notPrime:;
    }
    printf("%d\n", s);
}