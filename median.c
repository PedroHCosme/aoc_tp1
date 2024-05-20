#include <stdio.h>
#include <stdlib.h>

#define N 10

int main() {
    int i, j, n;
    float mediana, a[N], t;

    // Quantidade de itens no array definido pelo usuário
    printf("Quantidade de itens: ");
    scanf("%d", &n);

    // Lendo os itens no array a
    printf("Insira %d valores:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%f", &a[i]);
    }

    // Ordenando os valores
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (a[j] >= a[j + 1]) { // Trocando valores
                t = a[j];
                a[j] = a[j + 1];
                a[j + 1] = t;
            }
        }
    }

    // Mediana
    if (n % 2 == 0) {
        mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
    } else {
        mediana = a[n / 2];
    }

    // Print dos valores
    printf("Valores ordenados:\n");
    for (i = 0; i < n; i++) {
        printf("%f ", a[i]);
    }
    printf("\n Mediana: %f\n", mediana);

    return 0;
}