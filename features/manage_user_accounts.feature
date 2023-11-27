# language: es

Característica: Gestión de Cuentas de Usuario
  Como Administrador de la Plataforma,
  Quiero poder desactivar o eliminar cuentas de usuarios,
  Para asegurar el cumplimiento de las normas y mantener la integridad de la plataforma.

  Antecedentes:
    Dado que estoy logueado como Administrador de la Plataforma

  Escenario: En el que el administrador desactiva una cuenta de usuario
    Dado que he seleccionado una cuenta de usuario que ha violado las reglas de la plataforma
    Cuando elijo desactivar la cuenta
    Entonces debería recibir una solicitud de confirmación antes de que la cuenta sea desactivada
    Y el estado de la cuenta debería actualizarse a 'desactivado' inmediatamente después de la confirmación

  Escenario: En el que el administrador elimina una cuenta de usuario
    Dado que he seleccionado una cuenta de usuario que ha violado gravemente las reglas de la plataforma
    Cuando elijo eliminar la cuenta
    Entonces debería recibir una solicitud de confirmación antes de que la cuenta sea eliminada
    Y la cuenta ya no debería existir en el sistema después de la confirmación

  Escenario: En el que el administrador cancela la desactivación
    Dado que estoy a punto de desactivar una cuenta de usuario
    Cuando recibo la solicitud de confirmación
    Entonces debería tener la opción de cancelar el proceso de desactivación
    Y la cuenta debería permanecer activa si elijo cancelar

  Escenario: En el que el administrador encuentra un error
    Dado que intento desactivar una cuenta que ya está inactiva
    Cuando elijo desactivar la cuenta
    Entonces debería recibir un mensaje de error indicando que la cuenta ya está inactiva

  Escenario: En el que el administrador necesita confirmar la acción dos veces
    Dado que he seleccionado una cuenta de usuario para eliminar
    Cuando elijo eliminar la cuenta
    Entonces debería recibir una primera solicitud de confirmación
    Y cuando confirmo la acción
    Entonces debería recibir una segunda solicitud de confirmación para asegurar que la acción fue intencional
    Y la cuenta debería ser eliminada después de la segunda confirmación
