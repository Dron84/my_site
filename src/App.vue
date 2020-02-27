<template>
  <div id="app">
    <DefaultLayout></DefaultLayout>
  </div>
</template>

<script>
import DefaultLayout from './layout/DefaultLayout'

export default {
  name: 'App',
  components: {
      DefaultLayout
  }
}
</script>

<style lang="sass">
@import "components/sass/index"
</style>
