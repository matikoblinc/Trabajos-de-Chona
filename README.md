# Trabajos-de-Chona
 
 Integrantes: Matias K. y Juan Martin A.

 https://rinkeby.etherscan.io/tx/0x5afee3e81789110c7c6b9cd6a53022600893a98c7d60cf496d36cac92cb1ea21


a. ¿Cómo modificarías el Smart Contract para que acepte notas de 4 bimestres? 

Lo que haría es hacer que el mapping notas_materias este dentro de un array. Así podría llamar al valor cero de array y tener las notas guardadas en el mapping para el primer bimestre, el uno y tener el segundo, etc. 

b. Como le permitirias al docente darle permiso a otros docentes de asignar notas 

Convertiría a _teacher en un array en al cual el profesor podría agregar a los doscentes que quieran acceder al codigo con una función extra que crearía que se agregun valores al array. Cuando el docente entra debería singresar la key del array que es la suya. 

c. Investigar sobre los eventos de Solidity, como incluirías un evento para registrar cuando el docente determina una nota.

Segun lo que entiendo un evento sirve para guardar multiples valores dentro de un mismo conjunto y poder llamarlos y utilizarlos en cualquier parte del codigo.