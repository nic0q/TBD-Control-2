<template>
  <ul class="item-list">
    <div class="row">
      <div class="col">
        <h1>Lista Voluntarios</h1>
      </div>
      <div class="col">
        <a
          href="/createVoluntary"
          class="btn btn-primary btn-lg active"
          role="button"
          aria-pressed="true"
          >Crear un voluntario</a
        >
      </div>
    </div>
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Nombre</th>
          <th scope="col">Edad</th>
          <th scope="col">Inventario</th>
          <th scope="col">Salud</th>
          <th scope="col">Disponibilidad</th>
          <th scope="col"></th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <VoluntaryRow
          v-for="(item, index) in items"
          :key="index"
          :id="item.id"
          :name="item.name"
          :age="item.age"
          :inventory="item.inventory"
          :health="item.health"
          :avalaible="item.avalaible"
          v-on:tengores="onResultados"
        >
        </VoluntaryRow>
      </tbody>
    </table>
    <div class="forms col-lg-5">
      <div class="card mb-5">
        <div class="card-body p-sm-5">
          <h2 class="text-center mb-4">Editar voluntario </h2>
          <form method="post">
            <select class="edit-forms my-2 dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" v-model="id">
              <option v-for="(item, index) in items" :key="index" >
                {{ item.id }}
              </option>
            </select>
            <div class="edit-forms my-2">
              <input
                id="name"
                v-model="formData.name"
                class="form-control"
                type="text"
                name="nombre"
                placeholder="Nombre"
              />
            </div>
            <div class="edit-forms my-2">
              <input
                id="edad"
                class="form-control"
                v-model="formData.age"
                type="text"
                name="edad"
                placeholder="Edad"
              />
            </div>
            <div class="edit-forms my-2">
              <input
                id="salud"
                class="form-control"
                v-model="formData.health"
                name="salud"
                rows="1"
                placeholder="Salud"
              />
            </div>
            <div class="edit-forms my-2">
              <input
                id="equipamiento"
                v-model="formData.inventory"
                class="form-control"
                type="tex"
                name="equipamiento"
                placeholder="Equipamiento a su disposición"
              />
            </div>
            <div>
              <button class="btn btn-primary d-block w-100" type="submit" v-on:click="editVoluntary()">
                Aplicar Cambios
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div></div>
  </ul>
</template>
<script>
export default {
  data() {
    return {formData: {
        name: "",
        age: "",
        health: "",
        inventory: "",
        avalaible: 1,
      }, items: [], id: Number };
  },
  components: {
    dirs: ["~/components"],
  },
  methods: {
    //Función asíncrona para consultar los datos
    getData: async function () {
      try {
        let response = await this.$axios.get("/voluntaries");
        this.items = response.data;
        console.log(response);
      } catch (error) {
        console.log("error", error);
      }
    },
    editVoluntary: async function () {
      try {
        await this.$axios.put(`/voluntaries/${this.id}`, this.formData);
      } catch (error) {
        console.log("error", error);
      }
    },
    // onResultados(datos) {
    //   this.id = datos
    //   console.log(datos)
    //   console.log(this.id)
    // },
  },
  //Función que se ejecuta al cargar el componente
  created: function () {
    this.getData();
  },
};
</script>
