<template>
  <tr>
    <td>{{id}}</td>
    <td>{{name}}</td>
    <td>{{age}}</td>
    <td>{{inventory}}</td>
    <td>{{health}}</td>
    <td>{{avaliable}}</td>
  </tr>
  
</template>
<script>
    export default{
      props: {
        id: Number,
        name: String,
        age: Number,
        inventory: String,
        health: Number,
        avalaible: Boolean
      }
    }
</script>