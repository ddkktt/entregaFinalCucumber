const { Given, When, Then } = require('@cucumber/cucumber');

Given('que estoy logueado como Administrador de la Plataforma', function () {
  console.log('Administrador logueado');
});

Given('que he seleccionado una cuenta de usuario que ha violado las reglas de la plataforma', function () {
  console.log('Cuenta de usuario seleccionada para desactivación/eliminación');
});

When('elijo desactivar la cuenta', function () {
  console.log('Proceso de desactivación iniciado');
});

Then('debería recibir una solicitud de confirmación antes de que la cuenta sea desactivada', function () {
  console.log('Solicitud de confirmación recibida');
});

