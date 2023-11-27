const { Given, When, Then } = require('@cucumber/cucumber');

Given('que el usuario desea adquirir un pase de acceso', function () {
  console.log('Usuario listo para adquirir un pase de acceso');
});

When('el usuario selecciona un pase de {string}', function (duration) {
  console.log(`Usuario selecciona un pase de ${duration}`);
});

Then('el sistema debe verificar la disponibilidad para ese día', function () {
  console.log('Sistema verifica disponibilidad para un día');
});

Given('que el usuario desea adquirir un pase de {string}', function (duration) {
  console.log(`Usuario desea adquirir un pase de ${duration}`);
});

Given('no hay disponibilidad para pases de {string}', function (duration) {
  console.log(`No hay disponibilidad para pases de ${duration}`);
});

When('el usuario intenta seleccionar un pase de {string}', function (duration) {
  console.log(`Usuario intenta seleccionar un pase de ${duration}`);
});

Then('el sistema debe informar al usuario que no hay disponibilidad', function () {
  console.log('Sistema informa al usuario de la falta de disponibilidad');
});

