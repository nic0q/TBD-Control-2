<template>
  <ul class="item-list">
    <h1>Lista Voluntarios</h1>
    <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Nombre</th>
        <th scope="col">Edad</th>
        <th scope="col">Inventario</th>
        <th scope="col">Salud</th>
        <th scope="col"></th>
        <th scope="col"></th>
      </tr>
  </thead>
    <tbody>
        <VoluntaryRow v-for="(item, index) in items" :key="index" :id="item.id" :name="item.name" :age="item.age" :inventory="item.inventory" :health="item.health" :avaliable="item.avaliable">
        </VoluntaryRow>
    </tbody>
    </table>
    <div>
    </div>
  </ul>
</template>
<script>
  export default{
    data(){
      return{items:[]}
    },
    components: {
      dirs: [
        '~/components'
      ]
    },
    methods:{
      //Función asíncrona para consultar los datos
      getData: async function(){
        try {
          let response = await this.$axios.get('/voluntaries');
          this.items = response.data;
          console.log(response)
        } catch (error) {
          console.log('error', error);
        }
      }
      },
      //Función que se ejecuta al cargar el componente
      created:function(){
      this.getData();
    }
  }
</script>