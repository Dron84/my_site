<template>
    <div class="webCMS">
        <img src="/img/brands/drupal.png" alt="drupal" title="drupal">
        <img src="/img/brands/Joomla.png" alt="Joomla" title="Joomla">
        <img src="/img/brands/MODX.png" alt="MODX" title="MODX">
        <img src="/img/brands/Opencart.png" alt="Opencart" title="Opencart">
        <img src="/img/brands/wordpress.png" alt="wordpress" title="wordpress">
    </div>
</template>

<script>
    export default {
        name: "webBrandsCMS"
    }
</script>

<style scoped lang="sass">
    .webCMS
        padding: 20px
        display: flex
        justify-content: center
        img
            display: inline-block
            height: 70px
            -webkit-filter: grayscale(100%)
            filter: grayscale(100%)
            &:hover
                -webkit-filter: grayscale(0%)
                filter: grayscale(0%)
</style>