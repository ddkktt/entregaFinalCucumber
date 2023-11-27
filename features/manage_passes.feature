# language: es

Característica: Adquisición de Pases de Acceso
  Para proporcionar a los visitantes la capacidad de adquirir pases de diferentes categorías
  Como un usuario del sistema
  Quiero seleccionar el tipo de pase que deseo adquirir y verificar la disponibilidad

  Escenario: En el que el usuario selecciona un pase de 1 día
    Dado que el usuario desea adquirir un pase de acceso
    Cuando el usuario selecciona un pase de 1 día
    Entonces el sistema debe verificar la disponibilidad para ese día

  Escenario: En el que el usuario intenta adquirir un pase sin disponibilidad
    Dado que el usuario desea adquirir un pase de 1 mes
    Pero no hay disponibilidad para pases de 1 mes
    Cuando el usuario intenta seleccionar un pase de 1 mes
    Entonces el sistema debe informar al usuario que no hay disponibilidad

  Escenario: En el que se niega el acceso por código cancelado o expirado
    Dado que el visitante tiene un código de acceso
    Pero el código ha sido cancelado o ha expirado
    Cuando el visitante intenta usar el código
    Entonces el sistema debe negar el acceso

  Escenario: En el que un visitante realiza un depósito de seguridad
    Dado que el visitante elige la opción de poner un depósito de seguridad
    Cuando el visitante completa el proceso de depósito
    Entonces el sistema debe confirmar la recepción del depósito de seguridad
