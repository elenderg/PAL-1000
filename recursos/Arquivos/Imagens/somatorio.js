function somatorioNumerosImpares(numero) {
    if (numero < 0) {
      return;
    }
    let soma = 0;
    let contador = 1;
    while(true) {
     if (contador <= numero){
       break;
     }
      if (contador % 2 !== 0) {
        soma += contador;
      }
      contador++;
      if (soma >= 50) {
        break;
      }
    }
    return soma;
  }