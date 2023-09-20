$(document).ready(function () {
    //*****************************************************DOM**********************************************************/

    let du = document.getElementById("du");
    du.addEventListener("change", function () {
      validarDU(du);
    });

    let nombre = document.getElementById("nombre");
    nombre.addEventListener("change", function () {
      validarCadenaNombre(nombre);
    });

    let apellido = document.getElementById("apellido");
    apellido.addEventListener("change", function () {
      validarCadenaNombre(apellido);
    });

    let fecha_nacimiento = document.getElementById("fecha_nacimiento");
    fecha_nacimiento.addEventListener("change", function () {
      validarFechaNacimiento(fecha_nacimiento);
    });

    let pais = document.getElementById("pais");
    pais.addEventListener("change", function () {
      validarNulo(pais);
    });

    let codigo_area = document.getElementById("codigo_area");
    codigo_area.addEventListener("change", function () {
      validarNulo(codigo_area);
    });

    let telefono = document.getElementById("telefono");
    telefono.addEventListener("change", function () {
      validarTelefono(telefono);
    });

    let correo = document.getElementById("email");
    correo.addEventListener("change", function () {
      validarFormatoCorreo(correo);
    });

    let password = document.getElementById("contrasena");
    password.addEventListener("change", function () {
      validarPassword(password);
    });

    let mutual = document.getElementById("mutual");
    mutual.addEventListener("change", function () {
      validarNulo(mutual);
    });


/***********************METODOS PARA VALIDAR********************** */

//Valida el nombre del usuario
function validarCadenaNombre(cadena) {
    // Expresión regular para validar el nombre
    var regex = /^(?!^\s+$)[a-zA-Z\s]+$/;
    res = regex.test(cadena.value) && cadena.value!="";
    if (res) {
      mostrarValidFeedBack(cadena);
    } else {
      mostrarInvalidFeedBack(cadena);
    }
    return res;
  }

  function validarFechaNacimiento(fecha_nacimiento) {
        // Parsea la fecha en formato de cadena (por ejemplo, "YYYY-MM-DD") a un objeto Date
        //const fechaNacimiento = new Date(fecha);
        // Obtiene la fecha actual
        const fechaActual = new Date();
        // Calcula la diferencia de años entre la fecha actual y la fecha de nacimiento
        const diferenciaAnios = fechaActual.getFullYear() - fechaNacimiento.getFullYear();
        // Comprueba si la fecha de nacimiento ya ha ocurrido este año
        const mismoDiaYMes = fechaActual.getMonth() === fechaNacimiento.getMonth() && fechaActual.getDate() === fechaNacimiento.getDate();
        // Si la fecha de nacimiento ya ha ocurrido este año, y la diferencia de años es mayor o igual a 18, devuelve true, de lo contrario, devuelve false
        if (mismoDiaYMes && diferenciaAnios >= 18 && diferenciaAnios <= 100) {
            mostrarValidFeedBack(fecha_nacimiento);
            return true;
        } else if (fechaActual > fechaNacimiento && diferenciaAnios > 18 && diferenciaAnios <= 100) {
            mostrarValidFeedBack(fecha_nacimiento);
            return true;
        } else {
            mostrarInvalidFeedBack(fecha_nacimiento);
            return false;
        }
  }

    function validarTelefono(telefono) {
        const expresionRegular = /^\d{7,12}$/;
        if (expresionRegular.test(telefono)) {
            mostrarValidFeedBack(telefono);
            return true;
        } else {
            mostrarInvalidFeedBack(telefono);
            return false;
        }
    }


    function validarPassword(contrasena) {

      if (contrasena.value.length >= 6) {
        mostrarValidFeedBack(contrasena);
        return true;
      } else {
        mostrarInvalidFeedBack(contrasena);
        return false;
      }
    }

    function validarFormatoCorreo(correo) {
      var regex = /^[^@]+@[^@]+\.[a-zA-Z]{2,}$/;
      res = regex.test(correo.value);
      if (res) {
        mostrarValidFeedBack(correo);
      } else {
        mostrarInvalidFeedBack(correo);
      }
      return res;
    }


    function validarFormatoDU(du) {
      // Expresión regular para validar el DNI
      var regex = /^\d{7,8}$/;
      if (regex.test(du)) {
        return true;
      } else {
        return false;
      }
    }

    function validarNulo(eltoForm) {
      if (elto!=null) {
        mostrarValidFeedBack(eltoForm);
        return true;
      } else {
        mostrarInvalidFeedBack(eltoForm);
        return false;
      }
    }


    function validarDU(du) {
      if (validarFormatoDU(du.value)) {
        mostrarValidFeedBack(du);
        return true;
      } else {
        mostrarInvalidFeedBack(du);
        return false;
      }

    }

    $('#btnEnviar').on('click', function (event) {
      event.preventDefault();

      let res1 = validarDU(du);
      let res2 = validarCadenaNombre(nombre);
      let res3 = validarCadenaNombre(apellido);
      let res4 = validarFechaNacimiento(fecha_nacimiento);
      let res5 = validarNulo(pais);
      let res6 = validarNulo(codigo_area);
      let res7 = validarTelefono(telefono);
      let res8 = validarFormatoCorreo(correo);
      let res9 = validarPassword(contrasena);
      let res10 = validarNulo(mutual);


      if (res1 && res2 && res3 && res4 && res5 && res6 && res7 && res8 && res9 && res10) {
        noExisteEnBDDU(du.value, function (retorno) {
          if (retorno) {
            //Si no existe du en bd chequeo email
            noExisteEnBDCorreo(correo.value, function (retorno) {
              if (retorno) {
                //Confirmando que esta todo ok, envio los datos a la BD
                enviarDatosDB();
              } else {
                //Caso contrario, informo que el email ya esta en uso
                mostrarInvalidFeedBack(document.getElementById("email"));
              }
            });
          }
          else {
            //Caso contrario, informo que el du ya esta en uno
            mostrarInvalidFeedBack(document.getElementById("du"));
          }
        });
      }
      else {
        mostrarMensajeError("Error al enviar los datos");
      }
    });

    const noExisteEnBDDU = (du_value, callback) => {
      // realizamos la peticion
      let xhr = new XMLHttpRequest();
      xhr.open("GET", "/json/" + du_value + "/users", true);
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
      xhr.responseType = 'json';

      xhr.send();
      xhr.onload = () => {
        console.log(xhr.response);
        let respuesta = (xhr.response);
        let retorno = respuesta.user == null;
        if (retorno) {
          console.log("du valido!");
          console.log(respuesta);

          mostrarValidFeedBack(du);
          if (callback)
            callback(retorno);
        }
        else {

          mostrarInvalidFeedBack(du);
          mostrarMensajeError("Hay otro competidor registrado con este DU!");
        }
      }
    }

    const noExisteEnBDCorreo = (correo_value, callback) => {
      // realizamos la peticion
      let xhr = new XMLHttpRequest();
      xhr.open("GET", "/json/" + correo_value + "/users", true);
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
      xhr.responseType = 'json';

      xhr.send();
      xhr.onload = () => {
        let respuesta = (xhr.response);
        let retorno = respuesta.user == null;
        if (retorno) {
          console.log("correo valido!");

          mostrarValidFeedBack(correo);
          if (callback)
            callback(retorno);
        }
        else {
          mostrarInvalidFeedBack(correo);
          mostrarMensajeError("Hay otro competidor registrado con este correo!");
        }
      }
    }

    const enviarDatosDB = () => {
      let form = document.getElementById("register-form");
      var url = $("#register-form").attr('data-action');

      $.ajax({
        url: url,
        method: 'POST',
        data: new FormData(form),
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        success: function (response) {
          mostrarMensajeSucces("Registro", response.success);
          setTimeout(function () {
            window.location.replace('preferencias_paciente');
          }, 3000);
        },
        error: function (response) {
          mostrarMensajeError("No se pudo enviar los datos del paciente");
        }
      });
    }

    function mostrarMensajeSucces(titulo, mensaje) {
      Swal.fire({
        icon: "success",
        title: titulo,
        showCloseButton: true,
        html: `<b>${mensaje}</b>`,
      });
    }
    function mostrarMensajeError(mensaje) {
      Swal.fire({
        icon: "error",
        title: mensaje,
        showCloseButton: true,
      });
    }

    function limpiarFeedback(nodo) {
      if (nodo.classList.contains('is-invalid'))
        nodo.classList.remove("is-invalid");

      if (nodo.classList.contains('is-valid'))
        nodo.classList.remove("is-valid");
    }
    function mostrarInvalidFeedBack(input) {
      input.classList.remove("is-valid");
      input.classList.add("is-invalid");
    }
    function mostrarValidFeedBack(input) {
      input.classList.remove("is-invalid");
      input.classList.add("is-valid");
    }


  });

