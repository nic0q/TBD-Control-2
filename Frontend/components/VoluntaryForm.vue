<template>
  <form method="post">
    <div class="container">
      <h3>Crear un voluntario</h3>
      <br />
      <div class="row justify-content-center">
        <div class="col-12 col-md-8">
          <div class="form-group">
            <label for="name" class="control-label">Nombre</label>
            <input
              v-model="formData.name"
              type="text"
              class="form-control"
              id="name"
              placeholder="Ingrese su nombre"
            />
          </div>
          <div class="form-group">
            <label for="edad" class="control-label">Edad</label>
            <input
              v-model="formData.age"
              type="text"
              class="form-control"
              id="edad"
              name="edad"
              placeholder="Ingrese su edad"
            />
          </div>
          <div class="form-group">
            <label for="salud" class="control-label">Salud</label>
            <input
              v-model="formData.health"
              type="text"
              class="form-control"
              id="salud"
              name="salud"
              placeholder="Ingrese su estado de salud en la escala del 1 al 10"
            />
          </div>
          <div class="form-group">
            <label for="equipamiento" class="control-label">Equipamiento</label>
            <input
              v-model="formData.inventory"
              type="text"
              class="forlm-control"
              id="equipamiento"
              name="equipamiento"
              placeholder="Ingrese el tipo de equipamiento que tiene a su disposición"
            />
          </div>
          <div class="form-group">
            <button
              type="submit"
              v-on:click="sendData()"
              class="btn btn-primary"
            >
              Registrarse
            </button>
          </div>
        </div>
      </div>
    </div>
  </form>
</template>
<script>
export default {
  props: {
    name: String,
    age: Number,
    inventory: String,
    health: Number,
    avalaible: Boolean,
  },
};
</script>
