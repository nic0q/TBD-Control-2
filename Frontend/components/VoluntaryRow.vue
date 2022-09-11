<template>
  <tr>
    <td>{{ id }}</td>
    <td>{{ name }}</td>
    <td>{{ age }}</td>
    <td>{{ inventory }}</td>
    <td>{{ health }}</td>
    <td v-if="{ avalaible }">Disponible</td>
    <td v-else>No disponible</td>
    <a href="/showVoluntary" class="btn btn-danger" role="button" aria-pressed="true"
      v-on:click="deleteVoluntary">Borrar</a>
  </tr>
</template>
<script>
export default {
  props: {
    id: Number,
    name: String,
    age: Number,
    inventory: String,
    health: Number,
    avalaible: Boolean,
  },
  methods: {
    // editVoluntary: function () {
    //   this.$emit("tengores", this.$props.id);
    // },
    deleteVoluntary: async function () {
      try {
        await this.$axios.delete(`/voluntaries/${this.$props.id}`);
      } catch (error) {
        console.log("error", error);
      }
    },
  },
};
</script>
<style>
tr {
  text-align: center;
  color: white;
}
</style>