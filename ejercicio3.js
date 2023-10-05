// AGREGO EL EVENTO SUBMIT AL FORMULARIO
// Función para crear un nuevo usuario
function createUser() {
  document
    .getElementById("add-user-form")
    .addEventListener("submit", function (e) {
      e.preventDefault();

      const formData = new FormData(this);

      fetch("https://api.escuelajs.co/api/v1/users/", {
        method: "POST",
        body: JSON.stringify(Object.fromEntries(formData)),
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((response) => response.json())
        .then((data) => {
          console.log("Usuario agregado:", data);
          document.getElementById("add-user-form").reset();
          // Puedes hacer algo con la respuesta, como mostrar un mensaje de éxito.
        })
        .catch((error) => {
          console.error("Error al agregar usuario:", error);
          // Maneja cualquier error que ocurra durante la solicitud.
        });
    });
}

// AGREGO LOS USERS A LA LISTA
fetch("https://api.escuelajs.co/api/v1/users")
  .then((res) => res.json())
  .then((users) => {
    const productList = document.getElementById("user-list");

    // Itero por cada usuario y lo agrego a la lista obteniendo las variables del objeto
    users.forEach((user) => {
      const listItem = document.createElement("li");
      listItem.innerHTML = `
                        <h3>Nombre : ${user.name}</h3>
                        <h3>Correo : ${user.email}</h3>
                        <img src="${user.avatar}" alt="${user.name}"/>
                    `;
      productList.appendChild(listItem);
    });
  })
  .catch((error) => console.error("Error al obtener los productos:", error));
